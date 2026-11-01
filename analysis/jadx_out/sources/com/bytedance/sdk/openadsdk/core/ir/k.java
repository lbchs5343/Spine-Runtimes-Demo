package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.component.panglearmor.SoftDecTool;
import com.bytedance.sdk.component.panglearmor.d.p;
import com.bytedance.sdk.component.panglearmor.mn;
import com.bytedance.sdk.openadsdk.TTFileProvider;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.r.ij;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class k {

    /* renamed from: d, reason: collision with root package name */
    public static int f3059d = 1;
    public static int dq = 0;
    public static int ox = 2;
    private static int p = 300;
    private static volatile p.dq s;

    public static class dq implements com.bytedance.sdk.component.panglearmor.ia {
        @Override // com.bytedance.sdk.component.panglearmor.ia
        public void dq(long j, boolean z) {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM, j, Boolean.valueOf(z), (String) null);
        }

        @Override // com.bytedance.sdk.component.panglearmor.ia
        public void dq(String str, JSONObject jSONObject) {
            if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
                return;
            }
            k.dq(jSONObject.toString(), str);
        }
    }

    public static JSONArray d() {
        UsbAccessory[] accessoryList = ((UsbManager) com.bytedance.sdk.openadsdk.core.wp.getContext().getSystemService("usb")).getAccessoryList();
        JSONArray jSONArray = new JSONArray();
        if (accessoryList != null) {
            for (UsbAccessory usbAccessory : accessoryList) {
                if (usbAccessory != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("manufacturer", usbAccessory.getManufacturer());
                        jSONObject.put("model", usbAccessory.getModel());
                        jSONObject.put("desc", usbAccessory.getDescription());
                        jSONObject.put("uri", usbAccessory.getUri());
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONArray;
    }

    public static void d(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.wp.ox oxVar;
        if (jSONObject == null || com.bytedance.sdk.openadsdk.core.wp.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB) == null || (oxVar = (com.bytedance.sdk.openadsdk.core.wp.ox) AutoService.dq(com.bytedance.sdk.openadsdk.core.wp.ox.class)) == null || !oxVar.p()) {
            return;
        }
        oxVar.ox();
        oxVar.dq("antispam_handhold", jSONObject, new com.bytedance.sdk.openadsdk.core.wp.mn() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.5
            @Override // com.bytedance.sdk.openadsdk.core.wp.mn
            public ValueSet dq(int i, com.bytedance.sdk.openadsdk.core.wp.ia iaVar) {
                Result ox2 = iaVar.ox();
                if (ox2 == null) {
                    return null;
                }
                ox2.isSuccess();
                ValueSet values = ox2.values();
                if (!ox2.isSuccess() || values == null) {
                    return null;
                }
                JSONObject jSONObject2 = (JSONObject) values.objectValue(2, JSONObject.class);
                if (jSONObject2 != null) {
                    try {
                        JSONArray jSONArray = jSONObject2.getJSONArray("probability");
                        if (jSONArray.length() == 1) {
                            SoftDecTool.ua(jSONArray.optDouble(0), System.currentTimeMillis());
                        }
                    } catch (JSONException unused) {
                    }
                }
                return values;
            }
        });
    }

    public static int dq(String str) {
        int i = dq;
        if (str == null || str.isEmpty()) {
            return ox;
        }
        int indexOf = str.indexOf("_");
        if (indexOf <= 0) {
            return ox;
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        int indexOf2 = substring2.indexOf("_");
        if (indexOf2 <= 0) {
            return ox;
        }
        String substring3 = substring2.substring(0, indexOf2);
        String substring4 = substring2.substring(indexOf2 + 1);
        long longValue = Long.valueOf(substring).longValue() - Long.valueOf(substring3).longValue();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(substring3);
            sb.append("_");
            sb.append(com.bytedance.sdk.openadsdk.core.i.ox());
            return !com.bytedance.sdk.component.panglearmor.p.dq(sb.toString(), substring4) ? ox : Math.abs(longValue) > ((long) p) ? f3059d : i;
        } catch (Throwable unused) {
            return dq;
        }
    }

    public static String dq(String str, long j, int i, boolean z) {
        try {
            return com.bytedance.sdk.component.panglearmor.iw.dq(str, j, i, z);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String dq(Throwable th) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("stts", 3);
            jSONObject.put("exception:", th.toString());
            jSONObject.put("stacktrace:", Arrays.toString(th.getStackTrace()));
            jSONObject.put("cause:", String.valueOf(th.getCause()));
            return Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "eyJzdHRzIjozfQ==";
        }
    }

    public static void dq() {
        ia();
        p();
        if (com.bytedance.sdk.openadsdk.core.wp.d().vw()) {
            s();
            ox();
            mn();
            o();
        }
    }

    public static void dq(int i, final int i2) {
        if (com.bytedance.sdk.component.panglearmor.iw.p() != null && com.bytedance.sdk.openadsdk.core.no.ia().s()) {
            long currentTimeMillis = System.currentTimeMillis();
            boolean d2 = com.bytedance.sdk.component.panglearmor.d.s.dq().d();
            boolean z = ((long) (i - 1)) % com.bytedance.sdk.component.panglearmor.d.s.dq().s() == 0;
            boolean z2 = currentTimeMillis - com.bytedance.sdk.component.panglearmor.d.p.dq().p() > com.bytedance.sdk.component.panglearmor.d.s.dq().p();
            boolean ox2 = com.bytedance.sdk.component.panglearmor.d.p.dq().ox();
            com.bytedance.sdk.component.panglearmor.d.s.dq();
            com.bytedance.sdk.component.panglearmor.d.s.dq();
            com.bytedance.sdk.component.panglearmor.d.s.dq();
            com.bytedance.sdk.component.panglearmor.d.s.dq();
            if (z && z2 && d2 && !ox2) {
                if (s == null) {
                    s = new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.6
                        @Override // com.bytedance.sdk.component.panglearmor.d.p.dq
                        public void dq(JSONObject jSONObject) {
                            if (jSONObject != null) {
                                try {
                                    jSONObject.put("scene", i2);
                                } catch (JSONException unused) {
                                }
                                k.d(jSONObject);
                                k.dq(jSONObject);
                            }
                        }
                    };
                    com.bytedance.sdk.component.panglearmor.d.p.dq().dq(s);
                }
                com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("har") { // from class: com.bytedance.sdk.openadsdk.core.ir.k.7
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.component.panglearmor.d.p.dq().d();
                    }
                });
            }
        }
    }

    public static void dq(long j, int i) {
        try {
            com.bytedance.sdk.component.panglearmor.iw.dq(j, i);
        } catch (Throwable unused) {
        }
    }

    public static void dq(Context context) {
        mn.dq dq2 = new mn.dq(context, com.bytedance.sdk.openadsdk.core.op.dq(context), "6607").dq(true);
        dq2.dq(new dq());
        com.bytedance.sdk.component.panglearmor.iw.dq(dq2.dq());
    }

    public static void dq(MotionEvent motionEvent) {
        try {
            com.bytedance.sdk.component.panglearmor.iw.dq(motionEvent);
        } catch (Throwable unused) {
        }
    }

    private static void dq(ClassLoader classLoader, Class<?> cls, JSONObject jSONObject) throws Exception {
        Field declaredField = cls.getDeclaredField("pathList");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(classLoader);
        if (obj != null) {
            Field declaredField2 = obj.getClass().getDeclaredField("dexElements");
            declaredField2.setAccessible(true);
            Object[] objArr = (Object[]) declaredField2.get(obj);
            if (objArr != null) {
                jSONObject.put("size", objArr.length);
                StringBuilder sb = new StringBuilder();
                for (Object obj2 : objArr) {
                    Field declaredField3 = obj2.getClass().getDeclaredField("dexFile");
                    declaredField3.setAccessible(true);
                    Object obj3 = declaredField3.get(obj2);
                    if (obj3 != null && !obj3.toString().startsWith("/data/app")) {
                        sb.append(obj3);
                        sb.append(";");
                    }
                }
                jSONObject.put("dexPathList", sb);
            }
        }
    }

    public static void dq(final String str, final String str2) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(str2).d(str);
            }
        }, str2);
    }

    private static void dq(final List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("clz", list.toString());
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pangle_clz_found").d(jSONObject.toString());
            }
        }, "pangle_clz_found");
    }

    public static void dq(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("har_automatic").d(jSONObject.toString());
            }
        }, "har_automatic");
    }

    public static String ia() {
        ij kk = kk();
        com.bytedance.sdk.openadsdk.core.u.dq.dq().dq(kk);
        if (kk != null) {
            String ijVar = kk.toString();
            if (!TextUtils.isEmpty(ijVar)) {
                return ijVar;
            }
        }
        return null;
    }

    public static boolean iw() {
        try {
            return com.bytedance.sdk.component.panglearmor.p.dq(com.bytedance.sdk.openadsdk.core.wp.d().iw());
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static ij kk() {
        try {
            if (!com.bytedance.sdk.openadsdk.core.wp.d().iu()) {
                return null;
            }
            ij dq2 = com.bytedance.sdk.openadsdk.core.op.dq.dq(com.bytedance.sdk.openadsdk.core.wp.getContext()).dq();
            if (dq2 != null) {
                return dq2;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void mn() {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.k.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("board", Build.BOARD + "#" + com.bytedance.sdk.component.panglearmor.iw.dq("ro.product.board", MediationConfigUserInfoForSegment.GENDER_UNKNOWN));
                jSONObject.put("model", Build.MODEL + "#" + com.bytedance.sdk.component.panglearmor.iw.dq("ro.product.model", MediationConfigUserInfoForSegment.GENDER_UNKNOWN));
                jSONObject.put("os_version", Build.VERSION.RELEASE + "#" + com.bytedance.sdk.component.panglearmor.iw.dq("ro.build.version.release", MediationConfigUserInfoForSegment.GENDER_UNKNOWN));
                jSONObject.put("vendor", Build.MANUFACTURER + "#" + com.bytedance.sdk.component.panglearmor.iw.dq("ro.product.manufacturer", MediationConfigUserInfoForSegment.GENDER_UNKNOWN));
                jSONObject.put("rom_version", Build.DISPLAY + "#" + com.bytedance.sdk.component.panglearmor.iw.dq("ro.build.display.id", MediationConfigUserInfoForSegment.GENDER_UNKNOWN));
                jSONObject.put("compiling_time", Build.TIME + "#" + (Long.parseLong(com.bytedance.sdk.component.panglearmor.iw.dq("ro.build.date.utc", "-1")) * 1000));
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pangle_build_pick").d(jSONObject.toString());
            }
        }, "pangle_build_pick");
    }

    public static String no() {
        return com.bytedance.sdk.component.panglearmor.iw.ox();
    }

    public static void o() {
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context != null) {
            JSONObject jSONObject = new JSONObject();
            com.bytedance.sdk.openadsdk.core.op.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.op.dq.ox.dq(context);
            try {
                jSONObject.put("access_perm", com.bytedance.sdk.openadsdk.core.k.d.dq(context, "android.permission.ACCESS_NETWORK_STATE"));
                jSONObject.put("change_perm", com.bytedance.sdk.openadsdk.core.k.d.dq(context, "android.permission.CHANGE_NETWORK_STATE"));
                jSONObject.put("sim", com.bytedance.sdk.openadsdk.core.op.dq.s.dq());
                jSONObject.put("network", dq2.dq());
                dq(jSONObject.toString(), "uaid_info");
            } catch (Throwable unused) {
            }
        }
    }

    public static void ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray d2 = d();
            if (d2.length() > 0) {
                jSONObject.put("usb", d2);
            }
            JSONObject jSONObject2 = new JSONObject();
            int i = TTFileProvider.f2390e;
            ClassLoader classLoader = TTFileProvider.class.getClassLoader();
            if (classLoader != null) {
                jSONObject2.put("loader", classLoader.getClass().getName());
                Class<? super Object> superclass = classLoader.getClass().getSuperclass();
                while (true) {
                    if (superclass == null || superclass.getName().equals("java.lang.Object")) {
                        break;
                    }
                    if (superclass.getName().equals("dalvik.system.BaseDexClassLoader")) {
                        dq(classLoader, superclass, jSONObject2);
                        break;
                    }
                    superclass = superclass.getSuperclass();
                }
            }
            jSONObject.put("control", jSONObject2);
        } catch (Throwable unused) {
        }
        if (jSONObject.length() > 0) {
            dq(jSONObject.toString(), "pangle_check");
        }
    }

    public static String p() {
        try {
            return com.bytedance.sdk.component.panglearmor.iw.d();
        } catch (Throwable th) {
            th.printStackTrace();
            return dq(th);
        }
    }

    public static void s() {
        String[] kr = com.bytedance.sdk.openadsdk.core.wp.d().kr();
        if (kr == null || kr.length <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : kr) {
            try {
                Class.forName(str);
                arrayList.add(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (arrayList.size() > 0) {
            dq(arrayList);
        }
    }
}
