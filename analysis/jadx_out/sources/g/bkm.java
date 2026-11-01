package g;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdvj;
import com.google.android.gms.internal.ads.zzdvk;
import com.google.android.gms.internal.ads.zzfxd;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bkm {

    /* renamed from: g, reason: collision with root package name */
    public zzdvk f11743g;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11739c = new Object();

    /* renamed from: e, reason: collision with root package name */
    public String f11741e = "";

    /* renamed from: f, reason: collision with root package name */
    public String f11742f = "";

    /* renamed from: a, reason: collision with root package name */
    public boolean f11737a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11738b = false;

    /* renamed from: d, reason: collision with root package name */
    public String f11740d = "";

    public static void h(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            esy.f16117a.post(new apf(context, str, z, z2));
        } else {
            agd.k("Can not create dialog without Activity Context");
        }
    }

    public static final String i(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", ti.f20033a.z.at(context, str2));
        new bvv(context);
        dlc c2 = bvv.c(0, str, hashMap, null);
        try {
            return (String) c2.get(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzeN)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            agd.f("Interrupted while retrieving a response from: ".concat(String.valueOf(str)), e2);
            c2.cancel(true);
            return null;
        } catch (TimeoutException e3) {
            agd.f("Timeout while retrieving a response from: ".concat(String.valueOf(str)), e3);
            c2.cancel(true);
            return null;
        } catch (Exception e4) {
            agd.f("Error retrieving a response from: ".concat(String.valueOf(str)), e4);
            return null;
        }
    }

    public final boolean j() {
        boolean z;
        synchronized (this.f11739c) {
            z = this.f11737a;
        }
        return z;
    }

    public final Uri k(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f11739c) {
            if (TextUtils.isEmpty(this.f11741e)) {
                esy esyVar = ti.f20033a.z;
                try {
                    FileInputStream openFileInput = context.openFileInput("debug_signals_id.txt");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    cro.as(openFileInput, byteArrayOutputStream, true);
                    str5 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                } catch (IOException unused) {
                    agd.c("Error reading from internal storage.");
                    str5 = "";
                }
                this.f11741e = str5;
                if (TextUtils.isEmpty(str5)) {
                    esy esyVar2 = ti.f20033a.z;
                    String uuid = UUID.randomUUID().toString();
                    this.f11741e = uuid;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(uuid.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e2) {
                        agd.f("Error writing to file in internal storage.", e2);
                    }
                }
            }
            str4 = this.f11741e;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final void l(boolean z) {
        synchronized (this.f11739c) {
            try {
                this.f11738b = z;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue()) {
                    ((cmo) ti.f20033a.f20034ab.zzi()).al(z);
                    zzdvk zzdvkVar = this.f11743g;
                    if (zzdvkVar != null) {
                        zzdvkVar.zzl(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(Context context) {
        zzdvk zzdvkVar;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue() || (zzdvkVar = this.f11743g) == null) {
            return;
        }
        zzdvkVar.zzh(new bgu(this, context), zzdvj.zzd);
    }

    public final boolean n(Context context, String str, String str2) {
        zzbce zzbceVar = zzbcn.zzeL;
        edt edtVar = edt.f15376a;
        String i = i(context, k(context, (String) edtVar.f15379d.zza(zzbceVar), str, str2).toString(), str2);
        if (TextUtils.isEmpty(i)) {
            agd.c("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(i.trim()).optString("debug_mode"));
            l(equals);
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zziO)).booleanValue()) {
                gil zzi = ti.f20033a.f20034ab.zzi();
                if (true != equals) {
                    str = "";
                }
                ((cmo) zzi).bc(str);
            }
            return equals;
        } catch (JSONException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return false;
        }
    }

    public final boolean o(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !j()) {
            return false;
        }
        agd.c("Sending troubleshooting signals to the server.");
        q(context, str, str2, str3);
        return true;
    }

    public final void p(Context context, String str, String str2) {
        esy esyVar = ti.f20033a.z;
        esy.ai(context, k(context, (String) edt.f15376a.f15379d.zza(zzbcn.zzeJ), str, str2));
    }

    public final void q(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = k(context, (String) edt.f15376a.f15379d.zza(zzbcn.zzeM), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        esy esyVar = ti.f20033a.z;
        esy.ah(context, str, buildUpon.build().toString());
    }

    public final boolean r() {
        boolean z;
        synchronized (this.f11739c) {
            z = this.f11738b;
        }
        return z;
    }
}
