package g;

import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public class dmw extends Exception {

    @Deprecated
    protected final Status mStatus;

    public dmw(Status status) {
        super(status.getStatusCode() + ": " + (status.getStatusMessage() != null ? status.getStatusMessage() : ""));
        this.mStatus = status;
    }
}
