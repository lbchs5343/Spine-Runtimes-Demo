package g;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Method from annotation default annotation not found: alphabetic */
/* JADX WARN: Method from annotation default annotation not found: asm */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface ecz {
    String[] ignores() default {};

    Class mappingTo() default Void.class;

    String[] orders() default {};

    cbj[] parseFeatures() default {};

    Class[] seeAlso() default {};

    gar[] serialzeFeatures() default {};

    String typeName() default "";
}
