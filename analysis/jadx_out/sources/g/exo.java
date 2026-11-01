package g;

import android.os.Bundle;
import android.os.Environment;
import java.io.File;

/* loaded from: classes3.dex */
public abstract class exo extends eso {
    @Override // g.eso
    public cuz<File> getFragment(String str, int i, boolean z, boolean z2, boolean z3, boolean z4) {
        ero eroVar = new ero();
        if (str == null) {
            str = Environment.getExternalStorageDirectory().getPath();
        }
        if (i == 3 && z) {
            throw new IllegalArgumentException("MODE_NEW_FILE does not support 'allowMultiple'");
        }
        if (z4 && z) {
            throw new IllegalArgumentException("'singleClick' can not be used with 'allowMultiple'");
        }
        Bundle arguments = eroVar.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        if (str != null) {
            arguments.putString("KEY_START_PATH", str);
        }
        arguments.putBoolean("KEY_ALLOW_DIR_CREATE", z2);
        arguments.putBoolean("KEY_ALLOW_MULTIPLE", z);
        arguments.putBoolean("KEY_ALLOW_EXISTING_FILE", z3);
        arguments.putBoolean("KEY_SINGLE_CLICK", z4);
        arguments.putInt("KEY_MODE", i);
        eroVar.setArguments(arguments);
        return eroVar;
    }
}
