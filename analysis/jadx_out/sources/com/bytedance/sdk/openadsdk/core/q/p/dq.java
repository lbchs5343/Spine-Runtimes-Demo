package com.bytedance.sdk.openadsdk.core.q.p;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.u;
import com.bytedance.sdk.openadsdk.core.s.d;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private JSONObject dq;

    public static dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return dq(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static dq dq(JSONObject jSONObject) {
        dq dqVar = new dq();
        dqVar.dq = jSONObject;
        return dqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Bitmap bitmap, j jVar) throws JSONException {
        Matrix matrix = new Matrix();
        matrix.setScale(0.4f, 0.4f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        try {
            bitmap.recycle();
        } catch (Throwable th) {
            th.getMessage();
        }
        float height = createBitmap.getHeight() * createBitmap.getWidth();
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i = 0; i < createBitmap.getWidth(); i++) {
            for (int i2 = 0; i2 < createBitmap.getHeight(); i2++) {
                if (createBitmap.getPixel(i, i2) == -1) {
                    f2 += 1.0f;
                }
            }
        }
        try {
            createBitmap.recycle();
        } catch (Throwable th2) {
            th2.getMessage();
        }
        if ((f2 / height) * 100.0f > 95.0d) {
            JSONObject jSONObject = new JSONObject();
            if (jVar != null) {
                u sd = jVar.sd();
                jSONObject.put("channel_id", sd == null ? "" : sd.dq);
                jSONObject.put("preload_type", sd.f3513d);
                jSONObject.put(abn.EXTRA_URL, jVar.ae());
                jSONObject.put(MediationConstant.EXTRA_ADID, jVar.fa());
                jSONObject.put("cid", jVar.fx());
            }
            ig.dq().ia(jSONObject);
        }
    }

    public void dq(WebView webView, final j jVar) {
        View view;
        if (dq() && webView != null) {
            try {
                System.currentTimeMillis();
                if (Build.VERSION.SDK_INT >= 28 && webView.getLayerType() == 2 && (view = (View) webView.getParent()) != null) {
                    int measuredWidth = (int) (view.getMeasuredWidth() * 0.6d);
                    int measuredHeight = (int) (view.getMeasuredHeight() * 0.6d);
                    if (dq(wp.getContext(), measuredWidth, measuredHeight)) {
                        final Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.RGB_565);
                        view.draw(new Canvas(createBitmap));
                        System.currentTimeMillis();
                        mn.d(new kk("") { // from class: com.bytedance.sdk.openadsdk.core.q.p.dq.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    try {
                                        System.currentTimeMillis();
                                        dq.this.dq(createBitmap, jVar);
                                        System.currentTimeMillis();
                                    } catch (Throwable th) {
                                        try {
                                            th.getMessage();
                                            if (createBitmap.isRecycled()) {
                                                return;
                                            }
                                            createBitmap.recycle();
                                        } finally {
                                            try {
                                                if (!createBitmap.isRecycled()) {
                                                    createBitmap.recycle();
                                                }
                                            } catch (Throwable unused) {
                                            }
                                        }
                                    }
                                } catch (Throwable unused2) {
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public boolean dq() {
        JSONObject jSONObject = this.dq;
        if (jSONObject != null && jSONObject.optInt("type") > 0) {
            return d.dq((float) this.dq.optDouble("rate"), false);
        }
        return false;
    }

    public boolean dq(Context context, int i, int i2) {
        ActivityManager.MemoryInfo memoryInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        if (memoryInfo.lowMemory) {
            return false;
        }
        return memoryInfo.availMem > Math.max((long) Math.max(((double) memoryInfo.totalMem) * 0.02d, 5.24288E7d), (long) (((float) ((i * i2) * 2)) * 2.0f));
    }

    public String toString() {
        JSONObject jSONObject = this.dq;
        return jSONObject == null ? "" : jSONObject.toString();
    }
}
