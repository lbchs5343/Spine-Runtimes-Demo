package com.bykv.vk.component.ttvideo.model;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.Keep;
import org.json.JSONException;
import org.json.JSONObject;

@Keep
/* loaded from: classes.dex */
public final class LiveURL {
    public final String backupURL;
    public final String mainURL;
    public String sdkParams;

    public LiveURL(String str, String str2, String str3) {
        this.mainURL = str;
        this.backupURL = str2;
        this.sdkParams = str3;
    }

    public static LiveURL build(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new LiveURL(jSONObject.optString("main_play_url"), jSONObject.optString("backup_play_url"), jSONObject.optString("SdkParams"));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getVCodec() {
        JSONObject jSONObject;
        String optString;
        try {
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (this.sdkParams != null) {
            jSONObject = new JSONObject(this.sdkParams);
            if (jSONObject != null && jSONObject.has("VCodec")) {
                optString = jSONObject.optString("VCodec");
                if (TextUtils.isEmpty(optString)) {
                    return optString;
                }
            }
            return null;
        }
        jSONObject = null;
        if (jSONObject != null) {
            optString = jSONObject.optString("VCodec");
            if (TextUtils.isEmpty(optString)) {
            }
        }
        return null;
    }
}
