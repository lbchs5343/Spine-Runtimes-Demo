package com.bytedance.embedapplog;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import com.bytedance.embedapplog.f;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.o;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class jn implements hy {

    /* renamed from: d, reason: collision with root package name */
    private io<Boolean> f728d;
    private final hy dq;

    public jn() {
        this(null);
    }

    public jn(hy hyVar) {
        this.f728d = new io<Boolean>() { // from class: com.bytedance.embedapplog.jn.1
            @Override // com.bytedance.embedapplog.io
            /* renamed from: ox, reason: merged with bridge method [inline-methods] */
            public Boolean dq(Object... objArr) {
                try {
                    PackageInfo packageInfo = ((Context) objArr[0]).getPackageManager().getPackageInfo("com.heytap.openid", 0);
                    if (packageInfo == null) {
                        return Boolean.FALSE;
                    }
                    return Boolean.valueOf((Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : (long) packageInfo.versionCode) >= 1);
                } catch (PackageManager.NameNotFoundException unused) {
                    return Boolean.FALSE;
                } catch (Throwable th) {
                    jo.dq(th);
                    return Boolean.FALSE;
                }
            }
        };
        this.dq = hyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[Catch: Exception -> 0x0052, TryCatch #1 {Exception -> 0x0052, blocks: (B:11:0x0028, B:13:0x0030, B:15:0x003c, B:17:0x0054), top: B:10:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String ox(Context context) {
        Signature[] signatureArr;
        MessageDigest messageDigest;
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        } catch (Exception e2) {
            jo.dq(e2);
        }
        if (packageInfo != null) {
            signatureArr = packageInfo.signatures;
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] digest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b2 : digest) {
                            sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3));
                        }
                        return sb.toString();
                    }
                } catch (Exception e3) {
                    jo.dq(e3);
                }
            }
            return null;
        }
        signatureArr = null;
        if (signatureArr != null) {
            byte[] byteArray2 = signatureArr[0].toByteArray();
            messageDigest = MessageDigest.getInstance("SHA1");
            if (messageDigest != null) {
            }
        }
        return null;
    }

    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(final Context context) {
        if (this.dq != null && !this.f728d.d(new Object[0]).booleanValue()) {
            return this.dq.d(context);
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        String str = (String) new o(context, intent, new o.d<f, String>() { // from class: com.bytedance.embedapplog.jn.2
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public f dq(IBinder iBinder) {
                return f.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(f fVar) {
                if (fVar == null) {
                    return null;
                }
                String ox = jn.this.ox(context);
                if (TextUtils.isEmpty(ox)) {
                    return null;
                }
                return fVar.dq(context.getPackageName(), ox, "OUID");
            }
        }).dq();
        hy.dq dqVar = new hy.dq();
        dqVar.f721d = str;
        return dqVar;
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        if (context == null) {
            return false;
        }
        Boolean d2 = this.f728d.d(context);
        return (this.dq == null || d2.booleanValue()) ? d2.booleanValue() : this.dq.dq(context);
    }
}
