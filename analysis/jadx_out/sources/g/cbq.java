package g;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class cbq {

    /* renamed from: a, reason: collision with root package name */
    public static final cbq f12606a = new cbq();

    /* renamed from: b, reason: collision with root package name */
    public final gqc f12607b;

    public cbq() {
        gqc gqcVar = new gqc(8);
        this.f12607b = gqcVar;
        gqcVar.bd(Boolean.class, eyg.f16365c);
        eyg eygVar = eyg.j;
        gqcVar.bd(Character.class, eygVar);
        eyg eygVar2 = eyg.f16367e;
        gqcVar.bd(Byte.class, eygVar2);
        gqcVar.bd(Short.class, eygVar2);
        gqcVar.bd(Integer.class, eygVar2);
        gqcVar.bd(Long.class, eygVar2);
        eyg eygVar3 = eyg.f16364a;
        gqcVar.bd(Float.class, eygVar3);
        gqcVar.bd(Double.class, eygVar3);
        gqcVar.bd(Number.class, eygVar3);
        eyg eygVar4 = eyg.i;
        gqcVar.bd(BigDecimal.class, eygVar4);
        gqcVar.bd(BigInteger.class, eygVar4);
        gqcVar.bd(String.class, eyg.f16368f);
        gqcVar.bd(Object[].class, eyg.h);
        gqcVar.bd(Class.class, eygVar);
        gqcVar.bd(SimpleDateFormat.class, eygVar);
        gqcVar.bd(Locale.class, eygVar);
        gqcVar.bd(Currency.class, eygVar);
        gqcVar.bd(TimeZone.class, eygVar);
        gqcVar.bd(UUID.class, eygVar);
        gqcVar.bd(URI.class, eygVar);
        gqcVar.bd(URL.class, eygVar);
        gqcVar.bd(Pattern.class, eygVar);
        gqcVar.bd(Charset.class, eygVar);
    }

    public final duf c(Class cls) {
        Class superclass;
        eyg eygVar = eyg.j;
        gqc gqcVar = this.f12607b;
        duf dufVar = (duf) gqcVar.as(cls);
        if (dufVar != null) {
            return dufVar;
        }
        if (Map.class.isAssignableFrom(cls)) {
            gqcVar.bd(cls, new oz(2));
        } else {
            int i = 1;
            if (List.class.isAssignableFrom(cls)) {
                gqcVar.bd(cls, new oz(i));
            } else if (Collection.class.isAssignableFrom(cls)) {
                gqcVar.bd(cls, eyg.f16366d);
            } else {
                boolean isAssignableFrom = Date.class.isAssignableFrom(cls);
                gvz gvzVar = gvz.f18853a;
                if (isAssignableFrom) {
                    gqcVar.bd(cls, gvzVar);
                } else if (aeu.class.isAssignableFrom(cls)) {
                    gqcVar.bd(cls, eygVar);
                } else if (cko.class.isAssignableFrom(cls)) {
                    gqcVar.bd(cls, eygVar);
                } else if (fpk.class.isAssignableFrom(cls)) {
                    gqcVar.bd(cls, eygVar);
                } else {
                    int i2 = 0;
                    if (cls.isEnum() || !((superclass = cls.getSuperclass()) == null || superclass == Object.class || !superclass.isEnum())) {
                        gqcVar.bd(cls, new oz(i2));
                    } else if (cls.isArray()) {
                        Class<?> componentType = cls.getComponentType();
                        gqcVar.bd(cls, new ecr(componentType, c(componentType)));
                    } else if (Throwable.class.isAssignableFrom(cls)) {
                        wt wtVar = new wt(cls);
                        wtVar.f20244g |= gar.WriteClassName.mask;
                        gqcVar.bd(cls, wtVar);
                    } else if (TimeZone.class.isAssignableFrom(cls)) {
                        gqcVar.bd(cls, eygVar);
                    } else if (Charset.class.isAssignableFrom(cls)) {
                        gqcVar.bd(cls, eygVar);
                    } else if (Enumeration.class.isAssignableFrom(cls)) {
                        gqcVar.bd(cls, eygVar);
                    } else if (Calendar.class.isAssignableFrom(cls)) {
                        gqcVar.bd(cls, gvzVar);
                    } else {
                        Class<?>[] interfaces = cls.getInterfaces();
                        int length = interfaces.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                i = 0;
                                break;
                            }
                            Class<?> cls2 = interfaces[i3];
                            if (cls2.getName().equals("net.sf.cglib.proxy.Factory") || cls2.getName().equals("org.springframework.cglib.proxy.Factory")) {
                                break;
                            }
                            if (cls2.getName().equals("javassist.util.proxy.ProxyObject")) {
                                i = 0;
                                i2 = 1;
                                break;
                            }
                            i3++;
                        }
                        if (i != 0 || i2 != 0) {
                            duf c2 = c(cls.getSuperclass());
                            gqcVar.bd(cls, c2);
                            return c2;
                        }
                        gqcVar.bd(cls, new wt(cls));
                    }
                }
            }
        }
        return (duf) gqcVar.as(cls);
    }
}
