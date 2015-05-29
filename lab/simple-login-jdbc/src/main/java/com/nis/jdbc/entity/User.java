package com.nis.jdbc.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

/**
 * User: zannino
 * Date: 22/05/2015
 * Time: 17:18
 */
public class User implements UserDetails {

    private String username;
    private String password;
    private boolean enabled;
    private List<GrantedAuthority> grantedAuthorities;

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void setGrantedAuthorities(List<GrantedAuthority> grantedAuthorities) {
        this.grantedAuthorities = grantedAuthorities;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return grantedAuthorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;  //TODO
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;  //TODO
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;  //TODO
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }
}
