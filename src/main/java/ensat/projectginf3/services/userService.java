package ensat.projectginf3.services;

import ensat.projectginf3.entities.user;

public interface userService {

    public void saveUser(user user);
    public boolean getUser(String username);
}