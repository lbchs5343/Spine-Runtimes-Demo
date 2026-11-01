package g;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;

/* loaded from: classes3.dex */
public final class edi implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15358a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15359b;

    public /* synthetic */ edi(int i, Object obj) {
        this.f15358a = i;
        this.f15359b = obj;
    }

    private final boolean c(Message message) {
        if (message.what != 0) {
            return false;
        }
        duw duwVar = (duw) this.f15359b;
        ep epVar = (ep) message.obj;
        synchronized (duwVar.h) {
            if (((ep) duwVar.f14865e) == epVar || ((ep) duwVar.f14866f) == epVar) {
                duwVar.n(epVar, 2);
            }
        }
        return true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f15358a) {
            case 0:
                return c(message);
            default:
                int i = message.what;
                if (i == 0) {
                    synchronized (((bxk) this.f15359b).f12387f) {
                        try {
                            egn egnVar = (egn) message.obj;
                            enc encVar = (enc) ((bxk) this.f15359b).f12387f.get(egnVar);
                            if (encVar != null && encVar.f15845e.isEmpty()) {
                                if (encVar.f15842b) {
                                    encVar.f15841a.i.removeMessages(1, encVar.f15844d);
                                    bxk bxkVar = encVar.f15841a;
                                    bxkVar.f12385d.s(bxkVar.h, encVar);
                                    encVar.f15842b = false;
                                    encVar.f15846f = 2;
                                }
                                ((bxk) this.f15359b).f12387f.remove(egnVar);
                            }
                        } finally {
                        }
                    }
                } else {
                    if (i != 1) {
                        return false;
                    }
                    synchronized (((bxk) this.f15359b).f12387f) {
                        try {
                            egn egnVar2 = (egn) message.obj;
                            enc encVar2 = (enc) ((bxk) this.f15359b).f12387f.get(egnVar2);
                            if (encVar2 != null && encVar2.f15846f == 3) {
                                Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(egnVar2)), new Exception());
                                ComponentName componentName = encVar2.f15847g;
                                if (componentName == null) {
                                    egnVar2.getClass();
                                    componentName = null;
                                }
                                if (componentName == null) {
                                    String str = egnVar2.f15498c;
                                    ckd.k(str);
                                    componentName = new ComponentName(str, MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                                }
                                encVar2.onServiceDisconnected(componentName);
                            }
                        } finally {
                        }
                    }
                }
                return true;
        }
    }
}
