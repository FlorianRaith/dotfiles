#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
import java.lang.UnsupportedOperationException;
/**
 * Utility class
 *
 * @author Florian Raith
 */
public final class ${NAME} {

    private ${NAME}() {
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }

}
