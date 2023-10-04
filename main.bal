import ballerina/http;
import ballerina/log;

service /cli on new http:Listener(9090) {

    resource function get versions(string param) returns string[] {
        string[] versions = ["1.0.0", "1.1.0", "1.2.0"];
        log:printInfo("versions: " + param);
        return versions;
    }
}
