package g;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class ghy {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        atd atdVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                atdVar = new emr(clipData, 3);
            } else {
                euf eufVar = new euf();
                eufVar.j = clipData;
                eufVar.f16168f = 3;
                atdVar = eufVar;
            }
            goi.k(textView, atdVar.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        atd atdVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            atdVar = new emr(clipData, 3);
        } else {
            euf eufVar = new euf();
            eufVar.j = clipData;
            eufVar.f16168f = 3;
            atdVar = eufVar;
        }
        goi.k(view, atdVar.build());
        return true;
    }
}
