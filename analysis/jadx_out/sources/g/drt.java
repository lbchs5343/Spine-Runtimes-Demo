package g;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface drt {
    boolean hasBody() default false;

    String method();

    String path() default "";
}
