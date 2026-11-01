package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class hca {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f19207a = new HashSet(Arrays.asList("cn.trinea.android.developertools", "cn.trinea.android.developertools.pro", "cn.trinea.developer.options", "com.codekk.appviewer", "com.codekk.newsecond", "com.codekk.recordmore", "com.codekk.phone.info", "com.codekk.time.diary", "com.codekk.assistant", "com.codekk.salary.calculator", "com.codekk.designer.tools", "com.codekk.search.domain"));

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f19208b = new AtomicInteger(60);

    /* renamed from: c, reason: collision with root package name */
    public static gez f19209c = null;

    public static String d(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            if (i > 0) {
                sb.append(":");
            }
            String hexString = Integer.toHexString(bArr[i] & 255);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString().trim().toUpperCase();
    }

    public static gez e(Context context) {
        if (f19209c == null) {
            synchronized (hca.class) {
                try {
                    if (f19209c == null) {
                        f19209c = f(context, context.getPackageName());
                    }
                } finally {
                }
            }
        }
        return f19209c;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static gez f(Context context, String str) {
        Signature[] signatureArr;
        SigningInfo signingInfo;
        byte[] byteArray;
        PackageInfo d2 = cwz.b(context).d(dyd.ar(28) ? 64 : 134217728, str);
        if (d2 != null) {
            if (dyd.bp(28)) {
                signingInfo = d2.signingInfo;
                if (signingInfo != null) {
                    signatureArr = signingInfo.getApkContentsSigners();
                }
            } else {
                signatureArr = d2.signatures;
            }
            if (!acw.n(signatureArr)) {
                return new gez(false);
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArr) {
                    if (signature != null && (byteArray = signature.toByteArray()) != null && byteArray.length > 0) {
                        String d3 = d(messageDigest.digest(byteArray));
                        if (d3.equalsIgnoreCase(null)) {
                            return new gez(true);
                        }
                        arrayList.add(d3);
                    }
                }
                if (acw.u(arrayList)) {
                    return new gez(false);
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                gez gezVar = new gez(4);
                gezVar.f18010g = false;
                gezVar.f18008e = strArr;
                return gezVar;
            } catch (NoSuchAlgorithmException unused) {
                return new gez(false);
            }
        }
        signatureArr = null;
        if (!acw.n(signatureArr)) {
        }
    }

    public static boolean g(CharSequence charSequence) {
        return charSequence != null && f19207a.contains(charSequence.toString());
    }
}
