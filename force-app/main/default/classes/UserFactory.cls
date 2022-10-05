/**
 * Abstract the creation of builders to dependent classes
*/

public with sharing class UserFactory {
    private static final Map<UserTypes, Type> userBuilderByType = new Map<UserTypes, Type>{
            UserTypes.ADMIN => UserBuilder.Admin.class,
            UserTypes.STANDARD => UserBuilder.Standard.class
    };


    public static User getInstance(UserTypes userType){
       Type t = userBuilderByType.get(userType);
       IUserBuilder builder = (IUserBuilder) t.newInstance();
       return new UserDirector(builder).build();
    }
}