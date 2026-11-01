package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class gkm extends cyt {

    /* renamed from: b, reason: collision with root package name */
    public final Object f18310b;

    /* renamed from: c, reason: collision with root package name */
    public final her f18311c;

    public gkm(iz izVar, wg wgVar) {
        this.f18310b = izVar;
        fpd fpdVar = new fpd(wgVar, her.f19354a);
        String canonicalName = her.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        this.f18311c = (her) fpdVar.t(her.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
    }

    public final void d(String str, PrintWriter printWriter) {
        her herVar = this.f18311c;
        if (herVar.f19355b.j() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < herVar.f19355b.j(); i++) {
                fm fmVar = (fm) herVar.f19355b.i(i);
                printWriter.print(str);
                printWriter.print("  #");
                gob gobVar = herVar.f19355b;
                if (gobVar.f18484c) {
                    bfc.p(gobVar);
                }
                printWriter.print(gobVar.f18485d[i]);
                printWriter.print(": ");
                printWriter.println(fmVar.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(fmVar.w);
                adh adhVar = fmVar.w;
                String str3 = str2 + "  ";
                adhVar.getClass();
                printWriter.print(str3);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mListener=");
                printWriter.println(adhVar.f10041f);
                if (adhVar.j || adhVar.f10040e) {
                    printWriter.print(str3);
                    printWriter.print("mStarted=");
                    printWriter.print(adhVar.j);
                    printWriter.print(" mContentChanged=");
                    printWriter.print(adhVar.f10040e);
                    printWriter.print(" mProcessingChange=");
                    printWriter.println(false);
                }
                if (adhVar.l || adhVar.f10038c) {
                    printWriter.print(str3);
                    printWriter.print("mAbandoned=");
                    printWriter.print(adhVar.l);
                    printWriter.print(" mReset=");
                    printWriter.println(adhVar.f10038c);
                }
                if (adhVar.m != null) {
                    printWriter.print(str3);
                    printWriter.print("mTask=");
                    printWriter.print(adhVar.m);
                    printWriter.print(" waiting=");
                    adhVar.m.getClass();
                    printWriter.println(false);
                }
                if (adhVar.f10036a != null) {
                    printWriter.print(str3);
                    printWriter.print("mCancellingTask=");
                    printWriter.print(adhVar.f10036a);
                    printWriter.print(" waiting=");
                    adhVar.f10036a.getClass();
                    printWriter.println(false);
                }
                if (fmVar.v != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(fmVar.v);
                    gez gezVar = fmVar.v;
                    gezVar.getClass();
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(gezVar.f18010g);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                adh adhVar2 = fmVar.w;
                Object obj = fmVar.f241d;
                Object obj2 = obj != androidx.lifecycle.a.f238a ? obj : null;
                adhVar2.getClass();
                StringBuilder sb = new StringBuilder(64);
                erl.au(obj2, sb);
                sb.append("}");
                printWriter.println(sb.toString());
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(fmVar.j > 0);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        erl.au(this.f18310b, sb);
        sb.append("}}");
        return sb.toString();
    }
}
