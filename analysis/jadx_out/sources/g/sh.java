package g;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class sh {

    /* renamed from: a, reason: collision with root package name */
    public long f19970a;

    /* renamed from: b, reason: collision with root package name */
    public long f19971b;

    /* renamed from: c, reason: collision with root package name */
    public String f19972c;

    /* renamed from: d, reason: collision with root package name */
    public String f19973d;

    /* renamed from: e, reason: collision with root package name */
    public float f19974e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f19975f;

    public static double g(String str, JSONObject jSONObject) {
        if (awf.n(str)) {
            try {
                return Double.parseDouble(dzm.ae(str, jSONObject));
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return 0.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01b1 A[LOOP:2: B:53:0x01ab->B:55:0x01b1, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static sh h(dlv dlvVar, JSONObject jSONObject) {
        long j;
        cau cauVar;
        int i;
        JSONArray jSONArray;
        String str;
        String str2;
        String str3;
        long j2;
        JSONArray optJSONArray;
        int i2;
        if (jSONObject == null) {
            return null;
        }
        sh shVar = new sh();
        shVar.f19972c = jSONObject.optString("ordering");
        String str4 = "loop";
        String optString = jSONObject.optString("loop");
        String str5 = "infinite";
        boolean equals = TextUtils.equals("infinite", optString);
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f3 = -1.0f;
        if (equals) {
            shVar.f19974e = -1.0f;
        } else {
            try {
                shVar.f19974e = Float.parseFloat(optString);
            } catch (NumberFormatException unused) {
                shVar.f19974e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        shVar.f19970a = jSONObject.optLong(MediationConstant.EXTRA_DURATION, 0L);
        try {
            j = Long.parseLong(dzm.ae(jSONObject.optString("startDelay"), dlvVar.o()));
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            j = 0;
        }
        shVar.f19971b = j;
        shVar.f19973d = jSONObject.optString("loopMode");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("animators");
        if (optJSONArray2 != null) {
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (i3 < optJSONArray2.length()) {
                JSONObject optJSONObject = optJSONArray2.optJSONObject(i3);
                if (optJSONObject == null) {
                    jSONArray = optJSONArray2;
                    str2 = str4;
                    str = str5;
                    i = i3;
                    cauVar = null;
                } else {
                    cauVar = new cau();
                    i = i3;
                    cauVar.f12567d = optJSONObject.optLong(MediationConstant.EXTRA_DURATION);
                    String optString2 = optJSONObject.optString(str4);
                    if (TextUtils.equals(str5, optString2)) {
                        cauVar.f12570g = f3;
                    } else {
                        try {
                            cauVar.f12570g = Float.parseFloat(optString2);
                        } catch (NumberFormatException unused2) {
                            cauVar.f12570g = f2;
                        }
                    }
                    cauVar.i = optJSONObject.optString("loopMode");
                    cauVar.f12566c = optJSONObject.optString("type");
                    if (TextUtils.equals(cauVar.getType(), "ripple")) {
                        cauVar.h = optJSONObject.optString("rippleColor");
                    }
                    View kk = dlvVar.kk();
                    Context context = kk != null ? kk.getContext() : null;
                    if (TextUtils.equals(cauVar.getType(), "backgroundColor")) {
                        jSONArray = optJSONArray2;
                        String ae = dzm.ae(optJSONObject.optString("valueTo"), dlvVar.o());
                        int ab2 = bff.ab(optJSONObject.optString("valueFrom"), -16777216);
                        int ab3 = bff.ab(ae, -16777216);
                        cauVar.f12568e = ab2;
                        cauVar.j = ab3;
                        str2 = str4;
                        str = str5;
                    } else {
                        jSONArray = optJSONArray2;
                        if (!TextUtils.equals(cauVar.getType(), "translateX") && !TextUtils.equals(cauVar.getType(), "translateY")) {
                            str2 = str4;
                            str = str5;
                        } else if (context != null) {
                            String str6 = str4;
                            str = str5;
                            try {
                                float f4 = dxo.f(context, (float) optJSONObject.optDouble("valueFrom"));
                                str3 = str6;
                                try {
                                    float f5 = dxo.f(context, (float) optJSONObject.optDouble("valueTo"));
                                    cauVar.f12568e = f4;
                                    cauVar.j = f5;
                                } catch (Exception unused3) {
                                    Log.e("animation", "animation ");
                                    str2 = str3;
                                    cauVar.f12569f = optJSONObject.optString("interpolator");
                                    j2 = Long.parseLong(dzm.ae(optJSONObject.optString("startDelay"), dlvVar.o()));
                                    cauVar.f12565b = j2;
                                    optJSONArray = optJSONObject.optJSONArray("values");
                                    if (optJSONArray != null) {
                                        float[] fArr = new float[optJSONArray.length()];
                                        if (TextUtils.equals(cauVar.getType(), "translateX")) {
                                        }
                                        while (i2 < optJSONArray.length()) {
                                        }
                                        cauVar.f12564a = fArr;
                                    }
                                    arrayList.add(cauVar);
                                    i3 = i + 1;
                                    str4 = str2;
                                    optJSONArray2 = jSONArray;
                                    str5 = str;
                                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    f3 = -1.0f;
                                }
                            } catch (Exception unused4) {
                                str3 = str6;
                            }
                            str2 = str3;
                        } else {
                            str = str5;
                            str2 = str4;
                        }
                        cauVar.f12568e = (float) optJSONObject.optDouble("valueFrom");
                        cauVar.j = (float) optJSONObject.optDouble("valueTo");
                    }
                    cauVar.f12569f = optJSONObject.optString("interpolator");
                    try {
                        j2 = Long.parseLong(dzm.ae(optJSONObject.optString("startDelay"), dlvVar.o()));
                    } catch (NumberFormatException e3) {
                        e3.printStackTrace();
                        j2 = 0;
                    }
                    cauVar.f12565b = j2;
                    optJSONArray = optJSONObject.optJSONArray("values");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        float[] fArr2 = new float[optJSONArray.length()];
                        if ((!TextUtils.equals(cauVar.getType(), "translateX") || TextUtils.equals(cauVar.getType(), "translateY")) && context != null) {
                            for (i2 = 0; i2 < optJSONArray.length(); i2++) {
                                fArr2[i2] = dxo.f(context, (float) g(optJSONArray.optString(i2), dlvVar.o()));
                            }
                        } else {
                            for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                                fArr2[i4] = (float) g(optJSONArray.optString(i4), dlvVar.o());
                            }
                        }
                        cauVar.f12564a = fArr2;
                    }
                }
                arrayList.add(cauVar);
                i3 = i + 1;
                str4 = str2;
                optJSONArray2 = jSONArray;
                str5 = str;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                f3 = -1.0f;
            }
            shVar.f19975f = arrayList;
        }
        return shVar;
    }
}
