package g;

import java.lang.reflect.Type;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class dso extends dhm {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r1) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00df, code lost:
    
        if (r1 != null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e1, code lost:
    
        r0 = new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0166, code lost:
    
        if (r12 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0168, code lost:
    
        r0.setStackTrace(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x016b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e8, code lost:
    
        r0 = r1.getConstructors();
        r1 = r0.length;
        r5 = null;
        r6 = null;
        r7 = null;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
    
        if (r2 >= r1) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f4, code lost:
    
        r13 = r0[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fb, code lost:
    
        if (r13.getParameterTypes().length != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fd, code lost:
    
        r7 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x012d, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0106, code lost:
    
        if (r13.getParameterTypes().length != 1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010e, code lost:
    
        if (r13.getParameterTypes()[0] != java.lang.String.class) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0110, code lost:
    
        r6 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011a, code lost:
    
        if (r13.getParameterTypes().length != 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0122, code lost:
    
        if (r13.getParameterTypes()[0] != java.lang.String.class) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012a, code lost:
    
        if (r13.getParameterTypes()[1] != java.lang.Throwable.class) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012c, code lost:
    
        r5 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0131, code lost:
    
        if (r5 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0133, code lost:
    
        r4 = (java.lang.Throwable) r5.newInstance(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015d, code lost:
    
        if (r4 != null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015f, code lost:
    
        r0 = new java.lang.Exception(r11, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0165, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0142, code lost:
    
        if (r6 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
    
        r4 = (java.lang.Throwable) r6.newInstance(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0150, code lost:
    
        if (r7 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0152, code lost:
    
        r4 = (java.lang.Throwable) r7.newInstance(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015b, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0112, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0173, code lost:
    
        throw new g.bfj("create instance error", (java.lang.Throwable) r0);
     */
    @Override // g.dhm, g.cma
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(ccw ccwVar, Type type, Object obj) {
        Class cls;
        String bj;
        fzg fzgVar = ccwVar.h;
        int i = fzgVar.o;
        if (i == 8) {
            fzgVar.az();
            return null;
        }
        if (ccwVar.f12658c == 2) {
            ccwVar.f12658c = 0;
        } else if (i != 12) {
            throw new bfj("syntax error");
        }
        if (type != null && (type instanceof Class)) {
            cls = (Class) type;
        }
        cls = null;
        HashMap hashMap = new HashMap();
        Throwable th = null;
        String str = null;
        StackTraceElement[] stackTraceElementArr = null;
        while (true) {
            String bl = fzgVar.bl(ccwVar.i);
            if (bl == null) {
                int i2 = fzgVar.o;
                if (i2 == 13) {
                    fzgVar.bg(16);
                    break;
                }
                if (i2 == 16 && (cbj.AllowArbitraryCommas.mask & fzgVar.w) != 0) {
                }
            }
            fzgVar.bp();
            if ("@type".equals(bl)) {
                if (fzgVar.o != 4) {
                    throw new bfj("syntax error");
                }
                String bj2 = fzgVar.bj();
                ccwVar.k.getClass();
                cls = dtu.m(bj2);
                fzgVar.bg(16);
            } else if ("message".equals(bl)) {
                int i3 = fzgVar.o;
                if (i3 == 8) {
                    bj = null;
                } else {
                    if (i3 != 4) {
                        throw new bfj("syntax error");
                    }
                    bj = fzgVar.bj();
                }
                fzgVar.az();
                str = bj;
            } else if ("cause".equals(bl)) {
                th = (Throwable) g(ccwVar, null, "cause");
            } else if ("stackTrace".equals(bl)) {
                stackTraceElementArr = (StackTraceElement[]) ccwVar.p(null, StackTraceElement[].class);
            } else {
                hashMap.put(bl, ccwVar.x(null));
            }
            if (fzgVar.o == 13) {
                fzgVar.bg(16);
                break;
            }
        }
    }
}
