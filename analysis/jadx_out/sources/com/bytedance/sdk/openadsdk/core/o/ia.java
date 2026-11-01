package com.bytedance.sdk.openadsdk.core.o;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.widget.no;
import com.bytedance.sdk.openadsdk.downloadnew.core.DialogBuilder;
import com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ia {

    public static class dq implements DialogInterface {
        private dq() {
        }

        @Override // android.content.DialogInterface
        public void cancel() {
        }

        @Override // android.content.DialogInterface
        public void dismiss() {
        }
    }

    private static AlertDialog dq(Activity activity, int i, final DialogBuilder dialogBuilder) {
        AlertDialog.Builder onCancelListener = new AlertDialog.Builder(activity, i).setTitle(dialogBuilder.title).setMessage(dialogBuilder.message).setPositiveButton(dialogBuilder.positiveBtnText, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onPositiveBtnClick(dialogInterface);
                }
            }
        }).setNegativeButton(dialogBuilder.negativeBtnText, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onNegativeBtnClick(dialogInterface);
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onCancel(dialogInterface);
                }
            }
        });
        Drawable drawable = dialogBuilder.icon;
        if (drawable != null) {
            onCancelListener.setIcon(drawable);
        }
        AlertDialog create = onCancelListener.create();
        if (activity != null && !activity.isFinishing()) {
            create.show();
        }
        return create;
    }

    private static AlertDialog dq(Activity activity, final DialogBuilder dialogBuilder) {
        return new no(activity).dq(dialogBuilder.title).d(dialogBuilder.message).ox(dialogBuilder.positiveBtnText).p(dialogBuilder.negativeBtnText).dq(dialogBuilder.icon).dq(new no.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.no.dq
            public void d(Dialog dialog) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onNegativeBtnClick(dialog);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.no.dq
            public void dq(Dialog dialog) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onPositiveBtnClick(dialog);
                }
            }
        }).dq(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onCancel(dialogInterface);
                }
            }
        });
    }

    public static AlertDialog dq(Activity activity, boolean z, DialogBuilder dialogBuilder) {
        if (!z) {
            return dq(activity, r.mn(activity, "Theme.Dialog.TTDownload"), dialogBuilder);
        }
        AlertDialog dq2 = dq(activity, dialogBuilder);
        if (activity != null && !activity.isFinishing()) {
            dq2.show();
        }
        return dq2;
    }

    public static void dq(WeakReference<Context> weakReference, boolean z, final DialogBuilder dialogBuilder) {
        iw.dq dqVar = new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ia.3
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onNegativeBtnClick(new dq());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onPositiveBtnClick(new dq());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                IDialogStatusChangedListener iDialogStatusChangedListener = DialogBuilder.this.dialogStatusChangedListener;
                if (iDialogStatusChangedListener != null) {
                    iDialogStatusChangedListener.onCancel(new dq());
                }
            }
        };
        if (z) {
            com.bytedance.sdk.openadsdk.core.ir.iw.dq(weakReference.get(), String.valueOf(dialogBuilder.hashCode()), dialogBuilder.title, dialogBuilder.message, dialogBuilder.positiveBtnText, dialogBuilder.negativeBtnText, dqVar);
        } else {
            com.bytedance.sdk.openadsdk.core.ir.iw.dq(weakReference.get(), String.valueOf(dialogBuilder.hashCode()), dialogBuilder.title, dialogBuilder.message, dqVar);
        }
    }
}
