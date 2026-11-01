package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.ccb;
import g.chk;
import g.edt;
import g.esy;
import g.gfx;
import g.ti;
import java.io.ByteArrayOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzduu {

    /* renamed from: a, reason: collision with root package name */
    public final int f6533a;

    /* renamed from: b, reason: collision with root package name */
    public String f6534b = "";

    /* renamed from: c, reason: collision with root package name */
    public final Context f6535c;

    /* renamed from: d, reason: collision with root package name */
    public final ApplicationInfo f6536d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6537e;

    public zzduu(Context context) {
        this.f6535c = context;
        this.f6536d = context.getApplicationInfo();
        zzbce zzbceVar = zzbcn.zziM;
        edt edtVar = edt.f15376a;
        this.f6537e = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        this.f6533a = ((Integer) edtVar.f15379d.zza(zzbcn.zziN)).intValue();
    }

    public final JSONObject zza() throws JSONException {
        String str;
        String encodeToString;
        ApplicationInfo applicationInfo = this.f6536d;
        Context context = this.f6535c;
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = applicationInfo.packageName;
            gfx gfxVar = esy.f16117a;
            Context context2 = chk.c(context).f12624a;
            jSONObject.put(abn.EXTRA_UA_APP_NAME, context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(str2, 0)));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put(TTDownloadField.TT_PACKAGE_NAME, applicationInfo.packageName);
        esy esyVar = ti.f20033a.z;
        Drawable drawable = null;
        try {
            str = esy.y(context);
        } catch (RemoteException unused2) {
            str = null;
        }
        jSONObject.put("adMobAppId", str);
        boolean isEmpty = this.f6534b.isEmpty();
        int i = this.f6533a;
        int i2 = this.f6537e;
        if (isEmpty) {
            try {
                ccb c2 = chk.c(context);
                String str3 = applicationInfo.packageName;
                Context context3 = c2.f12624a;
                ApplicationInfo applicationInfo2 = context3.getPackageManager().getApplicationInfo(str3, 0);
                context3.getPackageManager().getApplicationLabel(applicationInfo2);
                drawable = context3.getPackageManager().getApplicationIcon(applicationInfo2);
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (drawable == null) {
                encodeToString = "";
            } else {
                drawable.setBounds(0, 0, i2, i);
                Bitmap createBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f6534b = encodeToString;
        }
        if (!this.f6534b.isEmpty()) {
            jSONObject.put("icon", this.f6534b);
            jSONObject.put("iconWidthPx", i2);
            jSONObject.put("iconHeightPx", i);
        }
        return jSONObject;
    }
}
