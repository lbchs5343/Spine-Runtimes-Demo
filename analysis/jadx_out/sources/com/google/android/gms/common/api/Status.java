package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import g.aly;
import g.bff;
import g.ckd;
import g.czn;
import g.egh;
import g.erl;
import g.exk;
import g.fbe;
import g.ffb;
import g.ffr;
import g.nk;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class Status extends exk implements ReflectedParcelable {
    private final int zzb;
    private final String zzc;
    private final PendingIntent zzd;
    private final nk zze;
    public static final Status RESULT_SUCCESS_CACHE = new Status(-1);
    public static final Status RESULT_SUCCESS = new Status(0);
    public static final Status RESULT_INTERRUPTED = new Status(14);
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);
    public static final Status RESULT_TIMEOUT = new Status(15);
    public static final Status RESULT_CANCELED = new Status(16);
    public static final Status zza = new Status(17);
    public static final Status RESULT_DEAD_CLIENT = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new fbe(10);

    public Status(int i) {
        this(i, (String) null);
    }

    public Status(int i, String str) {
        this(i, str, (PendingIntent) null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(i, str, pendingIntent, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent, nk nkVar) {
        this.zzb = i;
        this.zzc = str;
        this.zzd = pendingIntent;
        this.zze = nkVar;
    }

    public Status(nk nkVar, String str) {
        this(nkVar, str, 17);
    }

    @Deprecated
    public Status(nk nkVar, String str, int i) {
        this(i, str, nkVar.getResolution(), nkVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.zzb == status.zzb && ffb.w(this.zzc, status.zzc) && ffb.w(this.zzd, status.zzd) && ffb.w(this.zze, status.zze);
    }

    public nk getConnectionResult() {
        return this.zze;
    }

    public PendingIntent getResolution() {
        return this.zzd;
    }

    public Status getStatus() {
        return this;
    }

    @ResultIgnorabilityUnspecified
    public int getStatusCode() {
        return this.zzb;
    }

    public String getStatusMessage() {
        return this.zzc;
    }

    public boolean hasResolution() {
        return this.zzd != null;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze});
    }

    public boolean isCanceled() {
        return this.zzb == 16;
    }

    public boolean isInterrupted() {
        return this.zzb == 14;
    }

    public boolean isSuccess() {
        return this.zzb <= 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzd;
            ckd.k(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public void startResolutionForResult(aly alyVar) {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzd;
            ckd.k(pendingIntent);
            IntentSender intentSender = pendingIntent.getIntentSender();
            bff.p(intentSender, "intentSender");
            alyVar.a(new czn(intentSender, null, 0, 0));
        }
    }

    public String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(zza(), "statusCode");
        ffrVar.x(this.zzd, "resolution");
        return ffrVar.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int statusCode = getStatusCode();
        egh.aq(parcel, 1, 4);
        parcel.writeInt(statusCode);
        egh.p(parcel, 2, getStatusMessage());
        egh.u(parcel, 3, this.zzd, i);
        egh.u(parcel, 4, getConnectionResult(), i);
        egh.s(parcel, af);
    }

    public final String zza() {
        String str = this.zzc;
        return str != null ? str : erl.v(this.zzb);
    }
}
