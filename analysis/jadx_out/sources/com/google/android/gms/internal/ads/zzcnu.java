package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.edt;
import g.ti;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcnu implements zzbob {

    /* renamed from: a, reason: collision with root package name */
    public final PowerManager f5401a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5402b;

    /* renamed from: c, reason: collision with root package name */
    public final zzayi f5403c;

    public zzcnu(Context context, zzayi zzayiVar) {
        this.f5402b = context;
        this.f5403c = zzayiVar;
        this.f5401a = (PowerManager) context.getSystemService("power");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x024b  */
    @Override // com.google.android.gms.internal.ads.zzbob
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject zzb(zzcnx zzcnxVar) throws JSONException {
        float f2;
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzayl zzaylVar = zzcnxVar.zzf;
        if (zzaylVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzayi zzayiVar = this.f5403c;
            if (zzayiVar.zzd() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzaylVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", zzayiVar.zzb()).put("activeViewJSON", zzayiVar.zzd()).put("timestamp", zzcnxVar.zzd).put("adFormat", zzayiVar.zza()).put(TTDownloadField.TT_HASHCODE, zzayiVar.zzc()).put("isMraid", false).put("isStopped", false).put("isPaused", zzcnxVar.zzb).put("isNative", zzayiVar.zze()).put("isScreenOn", this.f5401a.isInteractive()).put("appMuted", ti.f20033a.f20036c.c()).put("appVolume", r6.f20036c.e());
            Context context = this.f5402b;
            AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
            if (audioManager != null) {
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = audioManager.getStreamVolume(3);
                if (streamMaxVolume != 0) {
                    f2 = streamVolume / streamMaxVolume;
                    put.put("deviceVolume", f2);
                    Rect rect = new Rect();
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    rect.right = defaultDisplay.getWidth();
                    rect.bottom = defaultDisplay.getHeight();
                    jSONObject3.put("windowVisibility", zzaylVar.zzb).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzaylVar.zzc.top).put("bottom", zzaylVar.zzc.bottom).put("left", zzaylVar.zzc.left).put("right", zzaylVar.zzc.right)).put("adBox", new JSONObject().put("top", zzaylVar.zzd.top).put("bottom", zzaylVar.zzd.bottom).put("left", zzaylVar.zzd.left).put("right", zzaylVar.zzd.right)).put("globalVisibleBox", new JSONObject().put("top", zzaylVar.zze.top).put("bottom", zzaylVar.zze.bottom).put("left", zzaylVar.zze.left).put("right", zzaylVar.zze.right)).put("globalVisibleBoxVisible", zzaylVar.zzf).put("localVisibleBox", new JSONObject().put("top", zzaylVar.zzg.top).put("bottom", zzaylVar.zzg.bottom).put("left", zzaylVar.zzg.left).put("right", zzaylVar.zzg.right)).put("localVisibleBoxVisible", zzaylVar.zzh).put("hitBox", new JSONObject().put("top", zzaylVar.zzi.top).put("bottom", zzaylVar.zzi.bottom).put("left", zzaylVar.zzi.left).put("right", zzaylVar.zzi.right)).put("screenDensity", context.getResources().getDisplayMetrics().density);
                    jSONObject3.put("isVisible", zzcnxVar.zza);
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbw)).booleanValue()) {
                        JSONArray jSONArray2 = new JSONArray();
                        List<Rect> list = zzaylVar.zzk;
                        if (list != null) {
                            for (Rect rect2 : list) {
                                jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                            }
                        }
                        jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                    }
                    if (!TextUtils.isEmpty(zzcnxVar.zze)) {
                        jSONObject3.put("doneReasonCode", "u");
                    }
                    jSONObject = jSONObject3;
                }
            }
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            put.put("deviceVolume", f2);
            Rect rect3 = new Rect();
            Display defaultDisplay2 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            rect3.right = defaultDisplay2.getWidth();
            rect3.bottom = defaultDisplay2.getHeight();
            jSONObject3.put("windowVisibility", zzaylVar.zzb).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", zzaylVar.zzc.top).put("bottom", zzaylVar.zzc.bottom).put("left", zzaylVar.zzc.left).put("right", zzaylVar.zzc.right)).put("adBox", new JSONObject().put("top", zzaylVar.zzd.top).put("bottom", zzaylVar.zzd.bottom).put("left", zzaylVar.zzd.left).put("right", zzaylVar.zzd.right)).put("globalVisibleBox", new JSONObject().put("top", zzaylVar.zze.top).put("bottom", zzaylVar.zze.bottom).put("left", zzaylVar.zze.left).put("right", zzaylVar.zze.right)).put("globalVisibleBoxVisible", zzaylVar.zzf).put("localVisibleBox", new JSONObject().put("top", zzaylVar.zzg.top).put("bottom", zzaylVar.zzg.bottom).put("left", zzaylVar.zzg.left).put("right", zzaylVar.zzg.right)).put("localVisibleBoxVisible", zzaylVar.zzh).put("hitBox", new JSONObject().put("top", zzaylVar.zzi.top).put("bottom", zzaylVar.zzi.bottom).put("left", zzaylVar.zzi.left).put("right", zzaylVar.zzi.right)).put("screenDensity", context.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzcnxVar.zza);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbw)).booleanValue()) {
            }
            if (!TextUtils.isEmpty(zzcnxVar.zze)) {
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
