package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.cpf;
import g.cpo;
import g.hat;
import g.tn;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ce {
    private Bridge ia;
    private static final ce p = new ce();
    private static int mn = -1;
    private static String kk = "ext_plugin";
    private volatile Bridge dq = null;

    /* renamed from: d, reason: collision with root package name */
    private volatile Bridge f2507d = null;
    private volatile Bridge ox = null;
    private AtomicBoolean s = new AtomicBoolean(false);
    private AtomicBoolean iw = new AtomicBoolean(false);

    private ce() {
    }

    public static int d() {
        if (mn == -1) {
            mn = dq().iw().intValue();
        }
        return mn;
    }

    public static String d(int i) {
        char[] charArray = String.valueOf(i).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            sb.append(charArray[i2]);
            if (i2 < charArray.length - 1) {
                sb.append(".");
            }
        }
        String sb2 = sb.toString();
        return (i < 100 || i >= 1000) ? sb2 : tn.x("0.", sb2);
    }

    private static Bundle dq(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(PluginConstants.KEY_APP_ID, str);
            String ia = ia();
            if (TextUtils.isEmpty(ia)) {
                return null;
            }
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, ia);
            bundle.putString(PluginConstants.KEY_SDK_VERSION, ig());
            return bundle;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p(kk, "error:" + th.getMessage());
            th.printStackTrace();
            return null;
        }
    }

    public static ce dq() {
        return p;
    }

    private static String dq(Context context) {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME).metaData.getString("ZEUS_PLUGIN_com.byted.csj.ext");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return d(new JSONObject(string).optInt("apiVersionCode"));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static String ia() {
        int i = op.f3334d;
        return (i == 5001 || i == 5002) ? o() : kk();
    }

    private static String ig() {
        return op.f3334d >= 5003 ? d(op.p) : dq(wp.getContext());
    }

    private Integer iw() {
        Integer num;
        Bridge mp = mp();
        if (mp == null || (num = (Integer) mp.call(1004, null, Integer.class)) == null) {
            return -1;
        }
        return num;
    }

    private static String kk() {
        Bridge nh = no.ia().nh();
        hat g2 = hat.g(1);
        g2.f19148c.put(0, "com.byted.csj.ext");
        return (String) nh.call(8, g2.k(), String.class);
    }

    private Bridge mn() {
        com.bytedance.sdk.openadsdk.core.wp.ox oxVar = (com.bytedance.sdk.openadsdk.core.wp.ox) AutoService.dq(com.bytedance.sdk.openadsdk.core.wp.ox.class);
        if (oxVar == null || !oxVar.ox()) {
            com.bytedance.sdk.component.utils.ig.p(kk, "can use pitaya false");
            return null;
        }
        if (!p() || iw().intValue() < 1100) {
            return null;
        }
        if (this.ox == null) {
            synchronized (ce.class) {
                try {
                    if (this.ox == null) {
                        Bridge mp = mp();
                        if (mp != null) {
                            this.ox = (Bridge) mp.call(AVMDLDataLoader.KeyIsStoRingBufferSizeKB, null, Bridge.class);
                        }
                    }
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.p(kk, "getBridge:" + th.getMessage());
                } finally {
                }
            }
        }
        return this.ox;
    }

    private Bridge mp() {
        try {
            if (this.ia == null) {
                Bridge nh = no.ia().nh();
                hat g2 = hat.g(1);
                g2.f19148c.put(0, "com.byted.csj.ext");
                this.ia = (Bridge) ((ClassLoader) nh.call(4, g2.k(), ClassLoader.class)).loadClass("com.byted.csj.ext_impl.ServiceManager").getConstructor(null).newInstance(null);
            }
            return this.ia;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p(kk, "getServiceManager:" + th.getMessage());
            return null;
        }
    }

    private static String no() {
        try {
            Integer iw = dq().iw();
            if (iw.intValue() != -1) {
                return d(iw.intValue());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static String o() {
        try {
            Bridge nh = no.ia().nh();
            JSONObject optJSONObject = no.ia().wp().optJSONObject("com.byted.csj.ext");
            hat g2 = hat.g(1);
            g2.f19148c.put(0, "com.byted.csj.ext");
            if (!((Boolean) nh.call(6, g2.k(), Boolean.class)).booleanValue()) {
                return optJSONObject == null ? "0.0.0.0" : (String) optJSONObject.opt(PluginConstants.KEY_PLUGIN_VERSION);
            }
            if (dq().p()) {
                return no();
            }
            return null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p(kk, "ignore:" + th.getMessage());
            th.printStackTrace();
            return "0.0.0.0";
        }
    }

    public static void ox() {
        if (op.f3334d < 5001) {
            return;
        }
        if (!wp.d().r()) {
            JSONObject wp = no.ia().wp();
            if (wp != null) {
                wp.remove("com.byted.csj.ext");
                return;
            }
            return;
        }
        Bundle bundle = new Bundle();
        Bundle dq = dq(no.ia().mp());
        if (dq != null) {
            bundle.putBundle("com.byted.csj.ext", dq);
        }
        no.ia().dq(bundle);
    }

    public Bridge dq(int i) {
        try {
            if (op.dq() && i == 10003) {
                return mn();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public boolean dq(Bridge bridge, boolean z) {
        try {
            if (this.s.get()) {
                return true;
            }
            if (!z) {
                this.iw.set(true);
            }
            hat g2 = hat.g(1);
            g2.f19148c.put(0, "com.byted.csj.ext");
            Boolean bool = (Boolean) bridge.call(5, g2.k(), Boolean.class);
            this.s.set(bool.booleanValue());
            this.iw.set(false);
            return bool.booleanValue();
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p(kk, ":" + th.getMessage());
            return false;
        }
    }

    public boolean p() {
        try {
            if (op.f3334d >= 5001 && wp.d().r()) {
                if (this.s.get()) {
                    return true;
                }
                if (this.iw.compareAndSet(false, true)) {
                    final Bridge nh = no.ia().nh();
                    hat g2 = hat.g(1);
                    g2.f19148c.put(0, "com.byted.csj.ext");
                    cpo k = g2.k();
                    if (((Boolean) nh.call(6, k, Boolean.class)).booleanValue()) {
                        if (!((Boolean) nh.call(7, k, Boolean.class)).booleanValue()) {
                            com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ce.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ce.this.dq(nh, true);
                                }
                            });
                            return false;
                        }
                        this.s.set(true);
                        this.iw.set(false);
                        return false;
                    }
                    this.iw.set(false);
                }
            }
            return false;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p(kk, "pit_ext_error:" + th.getMessage());
            return false;
        }
    }

    public cpf s() {
        if (op.f3334d >= 5001 && com.bytedance.sdk.openadsdk.core.cd.d.dq(wp.d().kx()) && p() && AutoService.dq(cpf.class) != null) {
            throw new ClassCastException();
        }
        return null;
    }
}
