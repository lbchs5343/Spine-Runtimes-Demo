package g;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class gts extends IOException {
    public final amc errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gts(amc amcVar) {
        super("stream was reset: " + amcVar);
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        this.errorCode = amcVar;
    }
}
