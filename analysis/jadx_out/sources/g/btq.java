package g;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Method from annotation default annotation not found: parseFeatures */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface btq {
    boolean deserialize() default true;

    String format() default "";

    String name() default "";

    int ordinal() default 0;

    boolean serialize() default true;

    gar[] serialzeFeatures() default {};
}
