package g;

import android.content.Context;
import android.os.Build;
import java.io.File;

/* loaded from: classes.dex */
public final class tc extends axr implements cvw {
    final /* synthetic */ exq this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tc(exq exqVar) {
        super(0);
        this.this$0 = exqVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        got gotVar;
        if (Build.VERSION.SDK_INT >= 23) {
            exq exqVar = this.this$0;
            if (exqVar.f16336f != null && exqVar.f16333c) {
                File noBackupFilesDir = this.this$0.f16335e.getNoBackupFilesDir();
                bff.e(noBackupFilesDir, "context.noBackupFilesDir");
                File file = new File(noBackupFilesDir, this.this$0.f16336f);
                Context context = this.this$0.f16335e;
                String absolutePath = file.getAbsolutePath();
                fc fcVar = new fc(9);
                exq exqVar2 = this.this$0;
                gotVar = new got(context, absolutePath, fcVar, exqVar2.f16332b, exqVar2.f16334d);
                gotVar.setWriteAheadLoggingEnabled(this.this$0.f16331a);
                return gotVar;
            }
        }
        exq exqVar3 = this.this$0;
        gotVar = new got(exqVar3.f16335e, exqVar3.f16336f, new fc(9), exqVar3.f16332b, exqVar3.f16334d);
        gotVar.setWriteAheadLoggingEnabled(this.this$0.f16331a);
        return gotVar;
    }
}
