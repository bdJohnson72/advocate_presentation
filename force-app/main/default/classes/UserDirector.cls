/**
 * Created by brooks on 10/2/2022.
 */

public with sharing class UserDirector {

    IUserBuilder userBuilder;


    public User build(IUserBuilder userBuilder) {
        this.userBuilder = userBuilder;
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