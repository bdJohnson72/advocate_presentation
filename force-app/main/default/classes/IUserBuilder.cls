
/**
 * This is our abstract builder. It allows a shared interface among many types
 * It is important that we separate the concept of class from type
 */
public interface IUserBuilder {

    void setFirstName();
    void setLastName();
    void setEmail();
    void setUsername();
    void setProfile();
    void setEmailEncodingKey();
    void setAlias();
    void setLanguageKey();
    void setLocalSIDKey();
    void setTimeZone();
    User getUser();



}