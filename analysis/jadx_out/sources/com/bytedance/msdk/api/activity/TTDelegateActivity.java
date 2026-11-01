package com.bytedance.msdk.api.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.msdk.core.q.iw;
import com.bytedance.msdk.core.q.s;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TTDelegateActivity extends Activity {
    private Intent dq;

    public static class dq implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private void d() {
        try {
            int intExtra = this.dq.getIntExtra("type", 0);
            if (intExtra == 1) {
                dq(intExtra, this.dq.getIntArrayExtra("permissions"));
                return;
            }
            if (intExtra == 2) {
                dq(this.dq.getStringExtra("permission_id_key"), this.dq.getStringArrayExtra("permission_content_key"));
            } else if (intExtra != 3) {
                finish();
            } else {
                dq(intExtra, (int[]) null);
            }
        } catch (Exception unused) {
            finish();
        }
    }

    private void dq() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        window.setAttributes(attributes);
    }

    private void dq(int i, int[] iArr) {
        if (Build.VERSION.SDK_INT < 23) {
            ox.dq("TTMediationSDK", "已经有Read phone state权限");
            finish();
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (i != 1) {
                if (i == 3) {
                    arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
                    arrayList.add("android.permission.ACCESS_FINE_LOCATION");
                    arrayList.add("android.permission.READ_PHONE_STATE");
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
            } else if (iArr != null && iArr.length > 0) {
                for (int i2 : iArr) {
                    if (i2 == 1) {
                        arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
                        arrayList.add("android.permission.ACCESS_FINE_LOCATION");
                    } else if (i2 == 2) {
                        arrayList.add("android.permission.READ_PHONE_STATE");
                    } else if (i2 == 3) {
                        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                    }
                }
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            s.dq().dq(this, strArr, new iw() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.2
                @Override // com.bytedance.msdk.core.q.iw
                public void dq() {
                    ox.dq("TMe", "-------=----- onGranted");
                    com.bytedance.msdk.dq.s.iw.p(new dq());
                    TTDelegateActivity.this.finish();
                }

                @Override // com.bytedance.msdk.core.q.iw
                public void dq(String str) {
                    ox.dq("TMe", "-------=----- onDenied: ".concat(String.valueOf(str)));
                    "android.permission.READ_PHONE_STATE".equals(str);
                    com.bytedance.msdk.dq.s.iw.p(new dq());
                    TTDelegateActivity.this.finish();
                }
            });
        } catch (Exception unused) {
            finish();
        }
    }

    private void dq(final String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT < 23) {
            ox.dq("TTMediationSDK", "已经有权限");
            finish();
        } else {
            try {
                s.dq().dq(this, strArr, new iw() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.1
                    @Override // com.bytedance.msdk.core.q.iw
                    public void dq() {
                        com.bytedance.msdk.core.q.dq.dq(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.msdk.core.q.iw
                    public void dq(String str2) {
                        com.bytedance.msdk.core.q.dq.dq(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
            } catch (Exception unused) {
                finish();
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dq();
        this.dq = getIntent();
        if (com.bytedance.msdk.core.dq.getContext() == null) {
            com.bytedance.msdk.core.dq.dq(this);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (com.bytedance.msdk.core.dq.getContext() == null) {
            com.bytedance.msdk.core.dq.dq(this);
        }
        try {
            setIntent(intent);
            this.dq = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s.dq().dq(this, strArr, iArr);
        com.bytedance.msdk.dq.s.iw.p(new dq());
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent() != null) {
            d();
        }
    }
}
