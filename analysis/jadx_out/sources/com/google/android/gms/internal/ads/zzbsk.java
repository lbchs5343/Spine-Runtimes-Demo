package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.agd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class zzbsk {
    public final zzcfk t;
    public final String u;

    public zzbsk(zzcfk zzcfkVar, String str) {
        this.t = zzcfkVar;
        this.u = str;
    }

    public final void zzg(int i, int i2, int i3, int i4) {
        try {
            this.t.zze("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put(MediaFormat.KEY_WIDTH, i3).put(MediaFormat.KEY_HEIGHT, i4));
        } catch (JSONException e2) {
            agd.f("Error occurred while dispatching default position.", e2);
        }
    }

    public final void zzh(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.u);
            zzcfk zzcfkVar = this.t;
            if (zzcfkVar != null) {
                zzcfkVar.zze("onError", put);
            }
        } catch (JSONException e2) {
            agd.f("Error occurred while dispatching error event.", e2);
        }
    }

    public final void zzi(String str) {
        try {
            this.t.zze("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e2) {
            agd.f("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void zzj(int i, int i2, int i3, int i4, float f2, int i5) {
        try {
            this.t.zze("onScreenInfoChanged", new JSONObject().put(MediaFormat.KEY_WIDTH, i).put(MediaFormat.KEY_HEIGHT, i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f2).put("rotation", i5));
        } catch (JSONException e2) {
            agd.f("Error occurred while obtaining screen information.", e2);
        }
    }

    public final void zzk(int i, int i2, int i3, int i4) {
        try {
            this.t.zze("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put(MediaFormat.KEY_WIDTH, i3).put(MediaFormat.KEY_HEIGHT, i4));
        } catch (JSONException e2) {
            agd.f("Error occurred while dispatching size change.", e2);
        }
    }

    public final void zzl(String str) {
        try {
            this.t.zze("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e2) {
            agd.f("Error occurred while dispatching state change.", e2);
        }
    }
}
