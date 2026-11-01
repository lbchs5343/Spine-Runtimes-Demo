package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import cn.trinea.android.developertools.R;
import g.bcf;
import g.esy;
import g.fgw;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbsh extends zzbsk {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f4959a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f4960b;

    public zzbsh(zzcfk zzcfkVar, Map map) {
        super(zzcfkVar, "storePicture");
        this.f4960b = map;
        this.f4959a = zzcfkVar.zzi();
    }

    public final void zzb() {
        Activity activity = this.f4959a;
        if (activity == null) {
            zzh("Activity context is not available");
            return;
        }
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        if (!new zzbbv(activity).zzc()) {
            zzh("Feature is not supported by the device.");
            return;
        }
        String str = (String) this.f4960b.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzh("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            zzh("Invalid image url: ".concat(String.valueOf(str)));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
            zzh("Image type not recognized: ".concat(String.valueOf(lastPathSegment)));
            return;
        }
        Resources zze = tiVar.f20034ab.zze();
        AlertDialog.Builder af = esy.af(activity);
        af.setTitle(zze != null ? zze.getString(R.string.s1) : "Save image");
        af.setMessage(zze != null ? zze.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
        af.setPositiveButton(zze != null ? zze.getString(R.string.s3) : "Accept", new bcf(this, str, lastPathSegment));
        af.setNegativeButton(zze != null ? zze.getString(R.string.s4) : "Decline", new fgw(8, this));
        af.create().show();
    }
}
