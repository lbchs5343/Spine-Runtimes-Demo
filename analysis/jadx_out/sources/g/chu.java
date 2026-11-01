package g;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface chu {
    boolean allowUnsafeNonAsciiValues() default false;

    String[] value();
}
