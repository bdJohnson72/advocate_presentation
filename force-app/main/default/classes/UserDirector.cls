/**
 * The director class accepts a IUserBuilder and constructs and returns one.
 */
public with sharing class UserDirector {

    private IUserBuilder userBuilder;

    public UserDirector(IUserBuilder userBuilder){
        this.userBuilder = userBuilder;
    }

    public User build(){
        userBuilder.setFirstName();
        userBuilder.setLastName();
        userBuilder.setUsername();
        userBuilder.setEmail();
        userBuilder.setAlias();
        userBuilder.setEmailEncodingKey();
        userBuilder.setLocalSIDKey();
        userBuilder.setLanguageKey();
        userBuilder.setProfile();
        userBuilder.setTimeZone();
        userBuilder.setPermSets();
        return this.userBuilder.getUser();
    }
}