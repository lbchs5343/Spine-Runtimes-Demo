package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfon {

    /* renamed from: a, reason: collision with root package name */
    public static WindowManager f8106a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f8107b = {"x", "y", MediaFormat.KEY_WIDTH, MediaFormat.KEY_HEIGHT};

    /* renamed from: c, reason: collision with root package name */
    public static float f8108c = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject zza(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f8108c);
            jSONObject.put("y", i2 / f8108c);
            jSONObject.put(MediaFormat.KEY_WIDTH, i3 / f8108c);
            jSONObject.put(MediaFormat.KEY_HEIGHT, i4 / f8108c);
            return jSONObject;
        } catch (JSONException e2) {
            zzfoo.zza("Error with creating viewStateObject", e2);
            return jSONObject;
        }
    }

    public static void zzb(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e2) {
            zzfoo.zza("Error with setting ad session id", e2);
        }
    }

    public static void zzc(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void zzd(Context context) {
        if (context != null) {
            f8108c = context.getResources().getDisplayMetrics().density;
            f8106a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void zze(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e2) {
            zzfoo.zza("JSONException during JSONObject.put for name [" + str + "]", e2);
        }
    }

    public static void zzf(JSONObject jSONObject) {
        float f2;
        float f3;
        if (f8106a != null) {
            Point point = new Point(0, 0);
            f8106a.getDefaultDisplay().getRealSize(point);
            float f4 = point.x;
            float f5 = f8108c;
            f2 = f4 / f5;
            f3 = point.y / f5;
        } else {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        try {
            jSONObject.put(MediaFormat.KEY_WIDTH, f2);
            jSONObject.put(MediaFormat.KEY_HEIGHT, f3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean zzg(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null) {
            int i = 0;
            while (true) {
                if (i < 4) {
                    String str = f8107b[i];
                    if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                        break;
                    }
                    i++;
                } else if (jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", "")) && Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice"))) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")))) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
                    if (optJSONArray != null || optJSONArray2 != null) {
                        if ((optJSONArray == null && optJSONArray2 == null) || (optJSONArray != null && optJSONArray2 != null && optJSONArray.length() == optJSONArray2.length())) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                if (!optJSONArray.optString(i2, "").equals(optJSONArray2.optString(i2, ""))) {
                                    break;
                                }
                            }
                        }
                    }
                    JSONArray optJSONArray3 = jSONObject.optJSONArray("childViews");
                    JSONArray optJSONArray4 = jSONObject2.optJSONArray("childViews");
                    if (optJSONArray3 == null && optJSONArray4 == null) {
                        return true;
                    }
                    if ((optJSONArray3 == null && optJSONArray4 == null) || (optJSONArray3 != null && optJSONArray4 != null && optJSONArray3.length() == optJSONArray4.length())) {
                        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                            if (zzg(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
