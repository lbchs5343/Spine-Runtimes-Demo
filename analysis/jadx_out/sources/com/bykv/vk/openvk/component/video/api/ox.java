package com.bykv.vk.openvk.component.video.api;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.d.dq.ig;
import java.io.File;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static Context f510d = null;
    public static boolean dq = false;
    private static int iw = 1;
    private static String ox;
    private static boolean p;
    private static ig s;

    public static boolean d() {
        return p;
    }

    public static String dq() {
        if (TextUtils.isEmpty(ox)) {
            try {
                File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(getContext()), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                ox = file.getAbsolutePath();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return ox;
    }

    public static void dq(Context context, String str) {
        f510d = context;
        ox = str;
    }

    public static void dq(ig igVar) {
        s = igVar;
    }

    public static void dq(boolean z) {
        p = z;
    }

    public static Context getContext() {
        return f510d;
    }

    public static ig ox() {
        if (s == null) {
            ig.dq dqVar = new ig.dq("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            s = dqVar.dq(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).d(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).ox(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).dq();
        }
        return s;
    }

    public static boolean p() {
        return dq;
    }

    public static int s() {
        return iw;
    }
}
