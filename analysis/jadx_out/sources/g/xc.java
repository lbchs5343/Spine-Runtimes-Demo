package g;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class xc {

    /* renamed from: c, reason: collision with root package name */
    public boolean f20272c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f20273d;

    /* renamed from: e, reason: collision with root package name */
    public String f20274e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20275f;

    /* renamed from: g, reason: collision with root package name */
    public final Annotation[] f20276g;
    public boolean h;
    public final Annotation[][] i;
    public final daw j;
    public dpd k;
    public LinkedHashSet l;
    public kj[] m;
    public final Type[] n;
    public String o;
    public boolean p;
    public boolean q;
    public boolean r;
    public final Class s;
    public boolean t;
    public boolean u;
    public dvq v;
    public final Method w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f20271b = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f20270a = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    public xc(daw dawVar, Class cls, Method method) {
        this.j = dawVar;
        this.s = cls;
        this.w = method;
        this.f20276g = method.getAnnotations();
        this.n = method.getGenericParameterTypes();
        this.i = method.getParameterAnnotations();
    }

    public static Class aa(Class cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }

    public final void ab(String str, String str2, boolean z) {
        String str3 = this.f20274e;
        Method method = this.w;
        if (str3 != null) {
            throw aky.w(method, null, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }
        this.f20274e = str;
        this.p = z;
        if (str2.isEmpty()) {
            return;
        }
        int indexOf = str2.indexOf(63);
        Pattern pattern = f20271b;
        if (indexOf != -1 && indexOf < str2.length() - 1) {
            String substring = str2.substring(indexOf + 1);
            if (pattern.matcher(substring).find()) {
                throw aky.w(method, null, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
            }
        }
        this.o = str2;
        Matcher matcher = pattern.matcher(str2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        this.l = linkedHashSet;
    }

    public final void ac(int i, Type type) {
        if (aky.ah(type)) {
            throw aky.am(this.w, i, "Parameter type must not include a type variable or wildcard: %s", type);
        }
    }
}
