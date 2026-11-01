package com.bytedance.sdk.openadsdk.q;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ekq;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private WeakReference<ia> f3859d;
    private Context dq;
    private Map<String, dq> ox = new HashMap();
    private SensorEventListener p = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.q.iw.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            ia p;
            if (sensorEvent.sensor.getType() != 1 || (p = iw.this.p()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put("z", f4);
                p.dq("accelerometer_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };
    private SensorEventListener s = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.q.iw.12
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            ia p;
            if (sensorEvent.sensor.getType() != 4 || (p = iw.this.p()) == null) {
                return;
            }
            float degrees = (float) Math.toDegrees(sensorEvent.values[0]);
            float degrees2 = (float) Math.toDegrees(sensorEvent.values[1]);
            float degrees3 = (float) Math.toDegrees(sensorEvent.values[2]);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", degrees);
                jSONObject.put("y", degrees2);
                jSONObject.put("z", degrees3);
                p.dq("gyro_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };
    private SensorEventListener iw = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.q.iw.23
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            ia p;
            if (sensorEvent.sensor.getType() != 10 || (p = iw.this.p()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put("z", f4);
                p.dq("accelerometer_grativityless_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };
    private SensorEventListener mn = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.q.iw.34
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = o.f3860d;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            } else if (sensorEvent.sensor.getType() == 2) {
                float[] fArr3 = sensorEvent.values;
                float[] fArr4 = o.ox;
                System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            }
            float[] fArr5 = o.p;
            SensorManager.getRotationMatrix(fArr5, null, o.f3860d, o.ox);
            float[] fArr6 = o.s;
            SensorManager.getOrientation(fArr5, fArr6);
            ia p = iw.this.p();
            if (p == null) {
                return;
            }
            float f2 = fArr6[0];
            float f3 = fArr6[1];
            float f4 = fArr6[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alpha", f2);
                jSONObject.put("beta", f3);
                jSONObject.put("gamma", f4);
                p.dq("rotation_vector_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    public interface dq {
        JSONObject dq(JSONObject jSONObject) throws Throwable;
    }

    public iw(ia iaVar) {
        this.dq = iaVar.getContext();
        this.f3859d = new WeakReference<>(iaVar);
        ox();
    }

    private void ox() {
        this.ox.put("adInfo", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.45
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                if (p == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject gh = p.gh();
                if (gh != null) {
                    gh.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return gh;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(PluginConstants.KEY_ERROR_CODE, -1);
                return jSONObject3;
            }
        });
        this.ox.put("appInfo", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.56
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                jSONObject2.put(TTDownloadField.TT_APP_NAME, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.5.1");
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = iw.this.dq().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("supportList", jSONArray);
                ia p = iw.this.p();
                if (p != null) {
                    jSONObject2.put("deviceId", p.iw());
                    jSONObject2.put("netType", p.f());
                    jSONObject2.put("innerAppName", p.ox());
                    jSONObject2.put(TTDownloadField.TT_APP_NAME, p.p());
                    jSONObject2.put("appVersion", p.s());
                    Map<String, String> dq2 = p.dq();
                    for (String str : dq2.keySet()) {
                        jSONObject2.put(str, dq2.get(str));
                    }
                }
                return jSONObject2;
            }
        });
        this.ox.put("playableSDKInfo", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.61
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                jSONObject2.put(TTDownloadField.TT_APP_NAME, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.5.1");
                jSONObject2.put("os", "android");
                return jSONObject2;
            }
        });
        this.ox.put("subscribe_app_ad", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.62
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("download_app_ad", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.63
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("isViewable", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.2
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                if (p == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(PluginConstants.KEY_ERROR_CODE, 1);
                jSONObject3.put("viewStatus", p.ia());
                return jSONObject3;
            }
        });
        this.ox.put("getVolume", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.3
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                if (p == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(PluginConstants.KEY_ERROR_CODE, 1);
                jSONObject3.put("endcard_mute", p.mn());
                return jSONObject3;
            }
        });
        this.ox.put("getScreenSize", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.4
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                if (p == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject cd = p.cd();
                cd.put(PluginConstants.KEY_ERROR_CODE, 1);
                return cd;
            }
        });
        this.ox.put("start_accelerometer_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.5
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i = 2;
                if (jSONObject != null) {
                    try {
                        i = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        mn.dq("PlayableJsBridge", "invoke start_accelerometer_observer error", th);
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                o.dq(iw.this.dq, iw.this.p, i);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("close_accelerometer_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.6
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, iw.this.p);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke close_accelerometer_observer error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("start_gyro_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.7
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i = 2;
                if (jSONObject != null) {
                    try {
                        i = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        mn.dq("PlayableJsBridge", "invoke start_gyro_observer error", th);
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                o.d(iw.this.dq, iw.this.s, i);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("close_gyro_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.8
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, iw.this.s);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke close_gyro_observer error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("start_accelerometer_grativityless_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.9
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i = 2;
                if (jSONObject != null) {
                    try {
                        i = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        mn.dq("PlayableJsBridge", "invoke start_accelerometer_grativityless_observer error", th);
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                o.ox(iw.this.dq, iw.this.iw, i);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("close_accelerometer_grativityless_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.10
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, iw.this.iw);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke close_accelerometer_grativityless_observer error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("start_rotation_vector_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.11
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int i = 2;
                if (jSONObject != null) {
                    try {
                        i = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        mn.dq("PlayableJsBridge", "invoke start_rotation_vector_observer error", th);
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                o.p(iw.this.dq, iw.this.mn, i);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("close_rotation_vector_observer", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.13
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, iw.this.mn);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke close_rotation_vector_observer error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("device_shake", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.14
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, 300L);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("device_shake_short", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.15
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    o.dq(iw.this.dq, 150L);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    mn.dq("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.ox.put("playable_style", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.16
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject d2 = p.d();
                d2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return d2;
            }
        });
        this.ox.put("sendReward", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.17
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.i();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("webview_time_track", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.18
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                return new JSONObject();
            }
        });
        this.ox.put("playable_event", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.19
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null || jSONObject == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.d(jSONObject.optString("event", null), jSONObject.optJSONObject("params"));
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("reportAd", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.20
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put(ILivePush.ClickType.CLOSE, new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.21
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("openAdLandPageLinks", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.22
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("get_viewport", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.24
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject r = p.r();
                r.put(PluginConstants.KEY_ERROR_CODE, 1);
                return r;
            }
        });
        this.ox.put("jssdk_load_finish", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.25
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.bl();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_material_render_result", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.26
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.no(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("detect_change_playable_click", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.27
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject kk = p.kk();
                kk.put(PluginConstants.KEY_ERROR_CODE, 1);
                return kk;
            }
        });
        this.ox.put("check_camera_permission", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.28
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject ig = p.ig();
                ig.put(PluginConstants.KEY_ERROR_CODE, 1);
                return ig;
            }
        });
        this.ox.put("check_external_storage", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.29
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject mp = p.mp();
                if (mp.isNull(ekq.EXTRA_PERMISSION_RESULT)) {
                    mp.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return mp;
                }
                mp.put(PluginConstants.KEY_ERROR_CODE, 1);
                return mp;
            }
        });
        this.ox.put("playable_open_camera", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.30
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.dq(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_pick_photo", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.31
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.d(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_download_media_in_photos", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.32
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.ox(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_preventTouchEvent", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.33
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.p(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_settings_info", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.35
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject q = p.q();
                q.put(PluginConstants.KEY_ERROR_CODE, 1);
                return q;
            }
        });
        this.ox.put("playable_load_main_scene", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.36
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.le();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_enter_section", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.37
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.iw(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_end", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.38
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.k();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_finish_play_playable", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.39
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.wp();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_transfrom_module_show", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.40
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.e();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_transfrom_module_change_color", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.41
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.kx();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_set_scroll_rect", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.42
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_click_area", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.43
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.mn(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_real_play_start", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.44
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_material_first_frame_show", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.46
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.h();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_stuck_check_pong", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.47
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.ji();
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_material_adnormal_mask", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.48
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                p.ia(jSONObject);
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_long_press_panel", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.49
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_alpha_player_play", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.50
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_transfrom_module_highlight", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.51
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_send_click_event", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.52
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_query_media_permission_declare", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.53
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject kk = p.kk(jSONObject);
                kk.put(PluginConstants.KEY_ERROR_CODE, 1);
                return kk;
            }
        });
        this.ox.put("playable_query_media_permission_enable", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.54
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                ia p = iw.this.p();
                JSONObject jSONObject2 = new JSONObject();
                if (p == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                JSONObject o = p.o(jSONObject);
                o.put(PluginConstants.KEY_ERROR_CODE, 1);
                return o;
            }
        });
        this.ox.put("playable_apply_media_permission", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.55
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_start_kws", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.57
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_close_kws", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.58
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_video_preload_task_add", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.59
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
        this.ox.put("playable_video_preload_task_cancel", new dq() { // from class: com.bytedance.sdk.openadsdk.q.iw.60
            @Override // com.bytedance.sdk.openadsdk.q.iw.dq
            public JSONObject dq(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.q.dq s = iw.this.s();
                JSONObject jSONObject2 = new JSONObject();
                if (s == null) {
                    jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
                    return jSONObject2;
                }
                jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 1);
                return jSONObject2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ia p() {
        WeakReference<ia> weakReference = this.f3859d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.openadsdk.q.dq s() {
        ia p = p();
        if (p == null) {
            return null;
        }
        return p.fw();
    }

    public void d() {
        o.dq(this.dq, this.p);
        o.dq(this.dq, this.s);
        o.dq(this.dq, this.iw);
        o.dq(this.dq, this.mn);
    }

    public Set<String> dq() {
        return this.ox.keySet();
    }

    public JSONObject dq(String str, JSONObject jSONObject) {
        try {
            dq dqVar = this.ox.get(str);
            if (dqVar != null) {
                return dqVar.dq(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(PluginConstants.KEY_ERROR_CODE, -1);
            return jSONObject2;
        } catch (Throwable th) {
            mn.dq("PlayableJsBridge", "invoke error", th);
            return null;
        }
    }
}
