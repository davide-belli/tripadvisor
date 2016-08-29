/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.google.common.io.Files;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import db.DBManager;
import db.User;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author gabriele
 */
public class PhotoUploadServlet extends HttpServlet {
    
    private DBManager manager;

    private String dirName;
    

    @Override
    public void init(ServletConfig config) throws ServletException {

        super.init(config);
        
        this.manager = (DBManager)super.getServletContext().getAttribute("dbmanager");
        
        // read the uploadDir from the servlet parameters
        dirName = getServletContext().getRealPath("") +  super.getServletContext().getInitParameter("photoDir");
        
        /*File p_dir = new File(dirName);    
        p_dir.mkdirs();
        
        File temp_dir = new File(dirName + "/temp");
        temp_dir.mkdir();*/
    }
    
    /**
     * Gestisce il caricamento di una foto tramite classe MultipartRequest creando le cartelle e file necessari.
     * Aggiorna poi la taballe Photo del database e crea una notifica per la nuova foto inserita in caso il ristorante in questione abbia un proprietario
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Integer id_restaurant;
        String name;
        String path;
        
        String isReview;
        
        try {

            MultipartRequest multi = new MultipartRequest(request, dirName+"/temp", 50*1024*1024, "UTF-8", new RenamePolicy());
            
            
            
            name = multi.getParameter("photoName");
            isReview = multi.getParameter("review");
            
            id_restaurant = Integer.parseInt(multi.getParameter("id_restaurant"));
            
            
            
            File photo = multi.getFile("img");
            int id = -1;
            if(photo != null){
                File dir = new File(dirName+"/"+id_restaurant);
                dir.mkdir();

                File copy = new File(dirName+"/"+id_restaurant + "/" + photo.getName());
                copy.createNewFile();
                Files.move(photo, copy);
                photo.delete();

                path = copy.getAbsolutePath().substring(getServletContext().getRealPath("").length());
                System.out.println("Salvata immagine al percorso: " + path);

                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("user");
                boolean own = false;
                if(user != null){
                    try{
                        own = manager.isRestaurantOwner(user.getId(), id_restaurant);
                    } catch (SQLException ex) {
                        Logger.getLogger(PhotoUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                try {
                    id = manager.insertPhoto(name, path, id_restaurant, own? 1 : 0);
                } catch (SQLException ex) {
                    Logger.getLogger(PhotoUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                int owner = -1;
                try {
                    owner = manager.getRestaurantOwner(id_restaurant);
                } catch (SQLException ex) {
                    Logger.getLogger(PhotoUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                if(owner >=0 && id >=0){
                    try {
                        manager.newPhotoNotification(id, owner);
                    } catch (SQLException ex) {
                        Logger.getLogger(PhotoUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            
            
            
            if(isReview.equals("true")){
                request.setAttribute("photo_id", id);
                request.setAttribute("multi", multi);
            }else{
                String return_address = multi.getParameter("return_address");
                
                response.sendRedirect(response.encodeRedirectURL(return_address));
            }
            
        }catch (IOException lEx) {
            this.getServletContext().log("error saving file", lEx);
        }
    }
    /**
     * Si occupa di rinominare il file in un formato omogeneo per tutte le foto 
     */
    private class RenamePolicy implements FileRenamePolicy{
 
        @Override
        public File rename(File f) {
            File f1 = new File(dirName + "/temp/" + new Date().toString().replace(" ", "") + "." + FilenameUtils.getExtension(f.getName()));
            
            f.renameTo(f1);
            return f1;
        }
        
    }
}
