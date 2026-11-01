package g;

import android.text.TextUtils;
import android.util.Log;

/* loaded from: classes3.dex */
public final class bgm extends bkw {

    /* renamed from: a, reason: collision with root package name */
    public final dvb f11517a;

    /* renamed from: b, reason: collision with root package name */
    public final dvb f11518b;

    /* renamed from: c, reason: collision with root package name */
    public final dvb f11519c;

    /* renamed from: g, reason: collision with root package name */
    public final dvb f11520g;
    public final dvb h;
    public final dvb j;
    public char k;
    public long l;
    public final dvb m;
    public final dvb o;
    public final dvb p;
    public String q;

    public bgm(cyg cygVar) {
        super(cygVar);
        this.k = (char) 0;
        this.l = -1L;
        this.f11518b = new dvb(this, 6, false, false);
        this.f11517a = new dvb(this, 6, true, false);
        this.m = new dvb(this, 6, false, true);
        this.f11520g = new dvb(this, 5, false, false);
        this.j = new dvb(this, 5, true, false);
        this.h = new dvb(this, 5, false, true);
        this.p = new dvb(this, 4, false, false);
        this.o = new dvb(this, 3, false, false);
        this.f11519c = new dvb(this, 2, false, false);
    }

    public static String r(Object obj, boolean z) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            String str = obj.toString().charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            return str + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof dfq ? ((dfq) obj).f14102a : z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String canonicalName = cyg.class.getCanonicalName();
        if (TextUtils.isEmpty(canonicalName)) {
            canonicalName = "";
        } else {
            int lastIndexOf = canonicalName.lastIndexOf(46);
            if (lastIndexOf != -1) {
                canonicalName = canonicalName.substring(0, lastIndexOf);
            }
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (TextUtils.isEmpty(className)) {
                    className = "";
                } else {
                    int lastIndexOf2 = className.lastIndexOf(46);
                    if (lastIndexOf2 != -1) {
                        className = className.substring(0, lastIndexOf2);
                    }
                }
                if (className.equals(canonicalName)) {
                    sb.append(": ");
                    sb.append(stackTraceElement);
                    break;
                }
            }
            i++;
        }
        return sb.toString();
    }

    public static String s(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String r = r(obj, z);
        String r2 = r(obj2, z);
        String r3 = r(obj3, z);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(r)) {
            sb.append(str2);
            sb.append(r);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(r2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(r2);
        }
        if (!TextUtils.isEmpty(r3)) {
            sb.append(str3);
            sb.append(r3);
        }
        return sb.toString();
    }

    public static dfq t(String str) {
        if (str == null) {
            return null;
        }
        return new dfq(str);
    }

    public final String al() {
        String str;
        synchronized (this) {
            try {
                if (this.q == null) {
                    cyg cygVar = (cyg) this.z;
                    String str2 = cygVar.r;
                    if (str2 != null) {
                        this.q = str2;
                    } else {
                        ((cyg) cygVar.f13747e.z).getClass();
                        this.q = "FA";
                    }
                }
                ckd.k(this.q);
                str = this.q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    @Override // g.bkw
    public final boolean n() {
        return false;
    }

    public final void u(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(al(), i)) {
            Log.println(i, al(), s(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        ckd.k(str);
        fth fthVar = ((cyg) this.z).j;
        if (fthVar == null) {
            Log.println(6, al(), "Scheduler not set. Not logging error/warn");
        } else if (fthVar.am) {
            fthVar.p(new eal(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
        } else {
            Log.println(6, al(), "Scheduler not initialized. Not logging error/warn");
        }
    }

    public final dvb v() {
        return this.f11518b;
    }

    public final dvb w() {
        return this.f11519c;
    }

    public final dvb x() {
        return this.f11520g;
    }
}
