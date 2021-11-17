#set($IS_UTIL=$NAME.toLowerCase().contains("util"))
#set($IS_MAIN=$PROJECT_NAME.toLowerCase() == $NAME.toLowerCase() || $NAME.toLowerCase() == "main")
#set($IS_ABSTRACT=$NAME.toLowerCase().contains("abstract"))
#set($CHAR = $NAME.substring(0, 1))
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#if ($IS_UTIL)import java.lang.UnsupportedOperationException;#end
#parse("File Header.java")

#if ($IS_MAIN)
/**
 * This is the main class of the project ${PROJECT_NAME}.
 * 
 * @author Florian Raith
 */
#elseif ($IS_UTIL)
/**
 * This is a utility class.
 * 
 * @author Florian Raith
 */
#else 
/**
 * This class represents a#if (${CHAR} == "A" || ${CHAR} == "E" || ${CHAR} == "I" || ${CHAR} == "O" || ${CHAR} == "U")n#end ${NAME}.
 *
 * @author Florian Raith
 */
#end
public #if ($IS_ABSTRACT)abstract#else final#end class ${NAME} {
#if ($IS_MAIN)
    
    /**
     * Entry point of the application.
     *
     * @param args arguments
     */
    public static void main(String[] args) {

    }
    
#elseif ($IS_UTIL)
    
    // Suppresses default constructor, ensuring non-instantiability.
    private ${NAME}() {
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }
    
#end
}
