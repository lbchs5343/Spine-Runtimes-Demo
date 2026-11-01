package g;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public final class aic implements dyt {

    /* renamed from: a, reason: collision with root package name */
    public final dzu f10251a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10252b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10253c;

    /* renamed from: d, reason: collision with root package name */
    public final ecd f10254d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10255e;

    public aic(ecd ecdVar, int i, dzu dzuVar, long j, long j2) {
        this.f10254d = ecdVar;
        this.f10255e = i;
        this.f10251a = dzuVar;
        this.f10252b = j;
        this.f10253c = j2;
    }

    public static csf f(fbd fbdVar, adw adwVar, int i) {
        csf telemetryConfiguration = adwVar.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return null;
        }
        int[] methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist();
        int i2 = 0;
        if (methodInvocationMethodKeyAllowlist != null) {
            while (i2 < methodInvocationMethodKeyAllowlist.length) {
                if (methodInvocationMethodKeyAllowlist[i2] != i) {
                    i2++;
                }
            }
            return null;
        }
        int[] methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist();
        if (methodInvocationMethodKeyDisallowlist != null) {
            while (i2 < methodInvocationMethodKeyDisallowlist.length) {
                if (methodInvocationMethodKeyDisallowlist[i2] == i) {
                    return null;
                }
                i2++;
            }
        }
        if (fbdVar.f16505e < telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return telemetryConfiguration;
        }
        return null;
    }

    @Override // g.dyt
    public final void onComplete(ci ciVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int errorCode;
        long j;
        long j2;
        int i5;
        if (this.f10254d.v()) {
            fzo fzoVar = cbn.d().f12599c;
            if (fzoVar == null || fzoVar.getMethodInvocationTelemetryEnabled()) {
                fbd fbdVar = (fbd) this.f10254d.f15294g.get(this.f10251a);
                if (fbdVar != null) {
                    Object obj = fbdVar.l;
                    if (obj instanceof adw) {
                        adw adwVar = (adw) obj;
                        boolean z = this.f10252b > 0;
                        int gCoreServiceId = adwVar.getGCoreServiceId();
                        if (fzoVar != null) {
                            z &= fzoVar.getMethodTimingTelemetryEnabled();
                            int batchPeriodMillis = fzoVar.getBatchPeriodMillis();
                            int maxMethodInvocationsInBatch = fzoVar.getMaxMethodInvocationsInBatch();
                            i = fzoVar.getVersion();
                            if (adwVar.hasConnectionInfo() && !adwVar.isConnecting()) {
                                csf f2 = f(fbdVar, adwVar, this.f10255e);
                                if (f2 == null) {
                                    return;
                                }
                                boolean z2 = f2.getMethodTimingTelemetryEnabled() && this.f10252b > 0;
                                maxMethodInvocationsInBatch = f2.getMaxMethodInvocationsLogged();
                                z = z2;
                            }
                            i2 = batchPeriodMillis;
                            i3 = maxMethodInvocationsInBatch;
                        } else {
                            i = 0;
                            i2 = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
                            i3 = 100;
                        }
                        ecd ecdVar = this.f10254d;
                        if (ciVar.a()) {
                            i4 = 0;
                            errorCode = 0;
                        } else {
                            if (((chw) ciVar).f12905e) {
                                i4 = 100;
                            } else {
                                Exception b2 = ciVar.b();
                                if (b2 instanceof dmw) {
                                    Status status = ((dmw) b2).mStatus;
                                    int statusCode = status.getStatusCode();
                                    nk connectionResult = status.getConnectionResult();
                                    if (connectionResult == null) {
                                        i4 = statusCode;
                                    } else {
                                        errorCode = connectionResult.getErrorCode();
                                        i4 = statusCode;
                                    }
                                } else {
                                    i4 = 101;
                                }
                            }
                            errorCode = -1;
                        }
                        if (z) {
                            long j3 = this.f10252b;
                            long j4 = this.f10253c;
                            j = j3;
                            j2 = System.currentTimeMillis();
                            i5 = (int) (SystemClock.elapsedRealtime() - j4);
                        } else {
                            j = 0;
                            j2 = 0;
                            i5 = -1;
                        }
                        ecdVar.getClass();
                        bkf bkfVar = new bkf(new brg(this.f10255e, i4, errorCode, j, j2, null, null, gCoreServiceId, i5), i, i2, i3);
                        dae daeVar = ecdVar.q;
                        daeVar.sendMessage(daeVar.obtainMessage(18, bkfVar));
                    }
                }
            }
        }
    }
}
