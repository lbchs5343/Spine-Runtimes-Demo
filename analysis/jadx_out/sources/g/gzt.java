package g;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class gzt extends egh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19069a;

    @Override // g.egh
    public cqh bj(Context context, Looper looper, daw dawVar, Object obj, fbd fbdVar, fbd fbdVar2) {
        switch (this.f19069a) {
            case 2:
                return new aka(context, looper, dawVar, (gja) obj, fbdVar, fbdVar2);
            case 3:
                return new fzr(context, looper, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX, dawVar, fbdVar, fbdVar2);
            default:
                return super.bj(context, looper, dawVar, obj, fbdVar, fbdVar2);
        }
    }

    @Override // g.egh
    public cqh bk(Context context, Looper looper, daw dawVar, Object obj, fwr fwrVar, dko dkoVar) {
        switch (this.f19069a) {
            case 0:
                dawVar.getClass();
                Integer num = (Integer) dawVar.f13888g;
                Bundle bundle = new Bundle();
                bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", null);
                if (num != null) {
                    bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
                }
                bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
                bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
                bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
                bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
                bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
                bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
                return new cdq(context, looper, dawVar, bundle, fwrVar, dkoVar);
            case 1:
                throw awf.j(obj);
            default:
                return super.bk(context, looper, dawVar, obj, fwrVar, dkoVar);
        }
    }
}
