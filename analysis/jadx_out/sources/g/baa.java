package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class baa extends bop {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f11149a;

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
    
        if (r0.intValue() >= 9) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006b  */
    static {
        Integer num;
        int i;
        boolean z;
        int i2;
        String property = System.getProperty("java.specification.version");
        boolean z2 = false;
        if (property != null) {
            egh.al(10);
            int length = property.length();
            if (length != 0) {
                char charAt = property.charAt(0);
                int i3 = -2147483647;
                if (bff.ad(charAt, 48) >= 0) {
                    i = 0;
                } else if (length != 1) {
                    if (charAt == '+') {
                        i = 1;
                    } else if (charAt == '-') {
                        i3 = Integer.MIN_VALUE;
                        i = 1;
                        z = true;
                        int i4 = 0;
                        int i5 = -59652323;
                        while (i < length) {
                            int digit = Character.digit((int) property.charAt(i), 10);
                            if (digit >= 0 && ((i4 >= i5 || (i5 == -59652323 && i4 >= (i5 = i3 / 10))) && (i2 = i4 * 10) >= i3 + digit)) {
                                i4 = i2 - digit;
                                i++;
                            }
                        }
                        num = !z ? Integer.valueOf(i4) : Integer.valueOf(-i4);
                        if (num == null) {
                            try {
                                SSLSocket.class.getMethod("getApplicationProtocol", null);
                            } catch (NoSuchMethodException unused) {
                            }
                        }
                        z2 = true;
                        f11149a = z2;
                    }
                }
                z = false;
                int i42 = 0;
                int i52 = -59652323;
                while (i < length) {
                }
                if (!z) {
                }
                if (num == null) {
                }
                z2 = true;
                f11149a = z2;
            }
        }
        num = null;
        if (num == null) {
        }
        z2 = true;
        f11149a = z2;
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((aqt) obj) != aqt.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(bkk.a(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((aqt) it.next()).toString());
        }
        sSLParameters.setApplicationProtocols((String[]) arrayList2.toArray(new String[0]));
        sSLSocket.setSSLParameters(sSLParameters);
    }

    @Override // g.bop
    public final String f(SSLSocket sSLSocket) {
        String applicationProtocol;
        try {
            applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
