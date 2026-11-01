package com.bykv.vk.component.ttvideo.player;

@Keep
/* loaded from: classes.dex */
public class AVDrmCreater {
    public static final int DrmTypeIntertrust = 1;
    public static final int DrmTypeNone = 0;

    @CalledByNative
    public static synchronized long createDrm(int i) {
        synchronized (AVDrmCreater.class) {
            if (i != 1) {
                return 0L;
            }
            return createDrm(100, "com.bykv.vk.component.ttvideo.drm.intertrust.IntertrustDrm");
        }
    }

    private static long createDrm(int i, String str) {
        try {
            ClassLoader loadPlugin = TTPlayerPluginLoader.loadPlugin(i);
            return Long.parseLong(String.valueOf((loadPlugin != null ? Class.forName(str, true, loadPlugin) : Class.forName(str)).getMethod("createDrm", null).invoke(null, null)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }
}
