package fr.devavance.metier.beans;

/**
 *
 * @author bouchaib.lemaire
 */
public class User {

    // properties
    private String userName = "";  // Nom d'utilisateur
    private String password = "";  // Mot de passe
    private String profil = "";  // Profil de l'utilisateur "admin" ou "user"
    private Boolean auth = false; // Important : déconnecté par défaut

    public User() {}
    
    public User(String username, String password, String profil) {
        this.userName = username;
        this.password = password;
        this.profil = profil;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfil() {
        return profil;
    }

    public void setProfil(String profil) {
        this.profil = profil;
    }

    public Boolean getAuth() {
        return auth;
    }

    public void setAuth(Boolean auth) {
        this.auth = auth;
    }
    
    


}