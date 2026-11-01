package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import g.tn;
import org.json.JSONObject;

/* loaded from: classes.dex */
public enum e {
    instance;


    /* renamed from: a, reason: collision with root package name */
    private VideoEventEngineUploader f487a;

    /* renamed from: b, reason: collision with root package name */
    private Context f488b;

    private void a(JSONObject jSONObject) {
        if (((TTVideoEngineLog.LogNotifyLevel >> 2) & 1) == 1 || ((TTVideoEngineLog.LogTurnOn >> 2) & 1) == 1) {
            TTVideoEngineLog.i("VideoEventManager", jSONObject.toString());
        }
        if (((TTVideoEngineLog.LogTurnOn >> 1) & 1) == 1) {
            Context context = this.f488b;
            String string = context != null ? Settings.Global.getString(context.getContentResolver(), "engine.debug") : "";
            if (string != null) {
                for (String str : string.split(",", -1)) {
                    if (jSONObject.opt(str) != null) {
                        StringBuilder l = tn.l(str, ":");
                        l.append(jSONObject.opt(str));
                        TTVideoEngineLog.i("VideoEventManager", l.toString());
                    }
                }
            }
        }
    }

    public void a(Context context) {
        this.f488b = context.getApplicationContext();
    }

    public synchronized void a(VideoEventEngineUploader videoEventEngineUploader) {
        this.f487a = videoEventEngineUploader;
    }

    public void a(boolean z, JSONObject jSONObject) {
        synchronized (e.class) {
            if (jSONObject != null) {
                try {
                    a(jSONObject);
                    VideoEventEngineUploader videoEventEngineUploader = this.f487a;
                    if (videoEventEngineUploader != null) {
                        videoEventEngineUploader.onEvent("video_playq", jSONObject);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
