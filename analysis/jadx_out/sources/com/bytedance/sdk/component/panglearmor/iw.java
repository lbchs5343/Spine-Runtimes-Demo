package com.bytedance.sdk.component.panglearmor;

import android.app.Application;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private static String dq;
    private static mn o;

    /* renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f2180d = new AtomicBoolean(false);
    private static final AtomicBoolean ox = new AtomicBoolean(false);
    private static String p = "";
    private static long s = 0;
    private static int iw = 0;
    private static d mn = null;
    private static volatile DisplayManager.DisplayListener ia = null;
    private static volatile boolean kk = false;

    @DungeonFlag
    public static String d() {
        if (kk.d() && o != null) {
            final Handler dq2 = com.bytedance.sdk.component.utils.ia.dq();
            final ia mn2 = mn();
            dq2.post(new Runnable() { // from class: com.bytedance.sdk.component.panglearmor.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (!iw.ox.get()) {
                            d unused = iw.mn = d.dq((Application) iw.o.dq());
                            iw.d(dq2);
                        }
                        s.dq(iw.o.dq());
                        if (SoftDecTool.acs == -1.0d) {
                            SoftDecTool.ua();
                        }
                        Object dq3 = iw.dq(1001, new Object[]{iw.o.dq()});
                        if (dq3 instanceof String) {
                            String unused2 = iw.p = (String) dq3;
                        }
                    } catch (Throwable th) {
                        String unused3 = iw.p = iw.d(th);
                    }
                    if (mn2 == null || iw.f2180d.getAndSet(true)) {
                        return;
                    }
                    JSONObject dq4 = com.bytedance.sdk.component.panglearmor.dq.dq.dq().dq(iw.o.dq(), iw.o.d());
                    if (dq4 != null && dq4.length() > 0) {
                        mn2.dq("detailed_app_info", dq4);
                    }
                    iw.f2180d.set(false);
                }
            });
        }
        if (TextUtils.isEmpty(p)) {
            String gc = SoftDecTool.gc();
            if (!TextUtils.isEmpty(gc)) {
                p = gc;
            }
        }
        return TextUtils.isEmpty(p) ? "eyJzdHRzIjoxfQ==" : p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static String d(Throwable th) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("stts", 3);
            jSONObject.put("exception:", th.toString());
            jSONObject.put("stacktrace:", Arrays.toString(th.getStackTrace()));
            jSONObject.put("cause:", String.valueOf(th.getCause()));
            p = Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable th2) {
            th2.printStackTrace();
            p = "eyJzdHRzIjozfQ==";
        }
        return p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static void d(Handler handler) {
        if (!kk.d() || kk || p() == null) {
            return;
        }
        kk = true;
        if (ia == null) {
            ia = new DisplayManager.DisplayListener() { // from class: com.bytedance.sdk.component.panglearmor.iw.2
                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayAdded(int i) {
                    if (i != 0) {
                        try {
                            iw.dq(1003, new Object[]{Integer.valueOf(i), iw.p()});
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayChanged(int i) {
                    if (i != 0) {
                        try {
                            iw.dq(1005, new Object[]{Integer.valueOf(i), iw.p()});
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayRemoved(int i) {
                    if (i != 0) {
                        try {
                            iw.dq(1004, new Object[]{Integer.valueOf(i), iw.p()});
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }
            };
        }
        ((DisplayManager) p().getSystemService("display")).registerDisplayListener(ia, handler);
    }

    @DungeonFlag
    public static Object dq(int i, Object[] objArr) {
        return SoftDecTool.cn(i, objArr);
    }

    public static String dq(String str, long j, int i, boolean z) {
        try {
            d dVar = mn;
            if (dVar != null) {
                return dVar.dq(str, j, i, z);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String dq(String str, String str2) {
        Object dq2 = dq(1010, new String[]{str, str2});
        return dq2 instanceof String ? (String) dq2 : str2;
    }

    public static void dq() {
        try {
            Context p2 = p();
            if (!s() || ox.getAndSet(true) || p2 == null) {
                return;
            }
            if (mn != null) {
                d.dq((Application) p2).d((Application) p2);
                mn = null;
            }
            if (ia != null) {
                ((DisplayManager) p2.getSystemService("display")).unregisterDisplayListener(ia);
                kk = false;
                ia = null;
            }
        } catch (Throwable unused) {
        }
    }

    @DungeonFlag
    public static void dq(long j, int i) {
        s = j;
        iw = i;
    }

    @DungeonFlag
    public static void dq(final MotionEvent motionEvent) {
        if (motionEvent == null || !kk.d() || p() == null) {
            return;
        }
        if (motionEvent.getRawX() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || motionEvent.getRawY() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.component.panglearmor.iw.3
                @Override // java.lang.Runnable
                public void run() {
                    iw.dq(1002, new Object[]{Integer.valueOf(motionEvent.getDeviceId()), iw.p()});
                }
            });
        }
    }

    public static void dq(mn mnVar) {
        o = mnVar;
    }

    public static long ia() {
        return s;
    }

    public static String iw() {
        mn mnVar = o;
        if (mnVar != null) {
            return mnVar.d();
        }
        return null;
    }

    public static int kk() {
        return iw;
    }

    public static ia mn() {
        mn mnVar = o;
        if (mnVar != null) {
            return mnVar.p();
        }
        return null;
    }

    public static String ox() {
        if (dq == null) {
            Object dq2 = dq(AVMDLDataLoader.KeyIsGetCostLog, new Object[0]);
            if (dq2 instanceof String) {
                dq = (String) dq2;
            }
        }
        String str = dq;
        return str != null ? str : "";
    }

    public static Context p() {
        mn mnVar = o;
        if (mnVar != null) {
            return mnVar.dq();
        }
        return null;
    }

    public static boolean s() {
        mn mnVar = o;
        if (mnVar != null) {
            return mnVar.ox();
        }
        return false;
    }
}
