package g;

import android.net.Uri;
import java.util.List;

/* loaded from: classes3.dex */
public interface gaf {
    void onCancelled();

    void onFilePicked(Uri uri);

    void onFilesPicked(List list);
}
