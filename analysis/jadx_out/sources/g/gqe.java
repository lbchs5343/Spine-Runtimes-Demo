package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class gqe extends crc {
    private final boolean isVisibleToUser;

    public gqe(Fragment fragment, boolean z) {
        super(fragment, "Attempting to set user visible hint to " + z + " for fragment " + fragment);
        this.isVisibleToUser = z;
    }
}
