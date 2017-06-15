package form;

import java.io.Serializable;

public class Order implements Serializable {

    /** 代金引換 */
    public static int COLLECT = 1;
    /** 郵便振込 */
    public static int TRANSFER = 2;
}
