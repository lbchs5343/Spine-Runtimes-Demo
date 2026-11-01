package g;

import android.content.ContentProviderClient;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzgyc;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public abstract /* synthetic */ class dub {
    public static void a(String str, String str2, String str3) {
        zzdt.zzf(str3, str2.concat(String.valueOf(str)));
    }

    public static boolean b() {
        return com.bytedance.msdk.ia.fw.dq(Thread.currentThread().getStackTrace());
    }

    public static int c(int i, int i2, int i3) {
        return (p.l(i) * i2) + i3;
    }

    public static int d(int i, int i2, int i3) {
        return p.h(i) + i2 + i3;
    }

    public static bjq e(Parcel parcel) {
        bjq d2 = bpp.d(parcel.readStrongBinder());
        parcel.recycle();
        return d2;
    }

    public static int f(int i, int i2, int i3) {
        return zzgyc.zzD(i) + i2 + i3;
    }

    public static void g(int i, String str, String str2) {
        zzdt.zzf(str2, str + i);
    }

    public static int h(int i, int i2, int i3) {
        return ctv.i(i) + i2 + i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void i(ContentProviderClient contentProviderClient) {
        if (contentProviderClient instanceof AutoCloseable) {
            contentProviderClient.close();
        } else if (contentProviderClient instanceof ExecutorService) {
            o.ad((ExecutorService) contentProviderClient);
        } else {
            contentProviderClient.release();
        }
    }

    public static int j(int i, int i2, int i3, int i4) {
        return p.h(i) + i2 + i3 + i4;
    }

    public static void k(StringBuilder sb, String str, String str2) {
        sb.append(str);
        com.bytedance.msdk.dq.s.ox.dq(str2, sb.toString());
    }

    public static int l(int i, int i2, int i3, int i4) {
        return ctv.i(i) + i2 + i3 + i4;
    }

    public static void m(czz czzVar, Bundle bundle, String str) {
        czzVar.getClass();
        bundle.putLong(str, System.currentTimeMillis());
    }

    public static Object n(gdt gdtVar, int i, ArrayList arrayList, int i2) {
        byh.ah(i, gdtVar.name(), arrayList);
        return arrayList.get(i2);
    }

    public static void o(com.bytedance.msdk.api.ox oxVar, ArrayList arrayList) {
        arrayList.add(new com.bytedance.sdk.gromore.dq.dq.p.iw(oxVar));
    }
}
