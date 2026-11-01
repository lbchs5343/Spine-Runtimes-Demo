package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig;

/* loaded from: classes3.dex */
public final class fna extends TTCustomController {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17063a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f17064b;

    public /* synthetic */ fna(Context context, int i) {
        this.f17063a = i;
        this.f17064b = context;
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final boolean alist() {
        switch (this.f17063a) {
            case 0:
                if (!byh.k || !this.f17064b.getPackageName().startsWith("cn.trinea.android.developertools")) {
                }
                break;
            default:
                if (!byh.k || !this.f17064b.getPackageName().startsWith("cn.trinea.android.developertools")) {
                }
                break;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final String getAndroidId() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.getAndroidId();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final String getDevImei() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.getDevImei();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public String getDevOaid() {
        switch (this.f17063a) {
            case 1:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.getDevOaid();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final String getMacAddress() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.getMacAddress();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public IMediationPrivacyConfig getMediationPrivacyConfig() {
        switch (this.f17063a) {
            case 1:
                return new clk();
            default:
                return super.getMediationPrivacyConfig();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final boolean isCanUseAndroidId() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.isCanUseAndroidId();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final boolean isCanUsePhoneState() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.isCanUsePhoneState();
    }

    @Override // com.bytedance.sdk.openadsdk.TTCustomController
    public final boolean isCanUseWifiState() {
        switch (this.f17063a) {
            case 0:
                if (byh.k) {
                    break;
                }
                break;
            default:
                if (byh.k) {
                    break;
                }
                break;
        }
        return super.isCanUseWifiState();
    }
}
