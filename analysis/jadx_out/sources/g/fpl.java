package g;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class fpl extends aoz implements DialogInterface {
    public final bgn j;

    public fpl(ContextThemeWrapper contextThemeWrapper, int i) {
        super(contextThemeWrapper, k(contextThemeWrapper, i));
        this.j = new bgn(getContext(), this, getWindow());
    }

    public static int k(Context context, int i) {
        if (((i >>> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public final Button l(int i) {
        bgn bgnVar = this.j;
        if (i == -3) {
            return bgnVar.u;
        }
        if (i == -2) {
            return bgnVar.v;
        }
        if (i == -1) {
            return bgnVar.y;
        }
        bgnVar.getClass();
        return null;
    }

    @Override // g.aoz, g.btt, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View view;
        View findViewById;
        super.onCreate(bundle);
        bgn bgnVar = this.j;
        bgnVar.x.setContentView(bgnVar.aa);
        Context context = bgnVar.m;
        Window window = bgnVar.ad;
        View findViewById2 = window.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        View view2 = bgnVar.ag;
        int i2 = 0;
        if (view2 == null) {
            view2 = bgnVar.f11523b != 0 ? LayoutInflater.from(context).inflate(bgnVar.f11523b, viewGroup, false) : null;
        }
        boolean z = view2 != null;
        if (!z || !bgn.ai(view2)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (bgnVar.w) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (bgnVar.s != null) {
                ((LinearLayout.LayoutParams) ((aob) viewGroup.getLayoutParams())).weight = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup ak = bgn.ak(findViewById6, findViewById3);
        ViewGroup ak2 = bgn.ak(findViewById7, findViewById4);
        ViewGroup ak3 = bgn.ak(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        bgnVar.t = nestedScrollView;
        nestedScrollView.setFocusable(false);
        bgnVar.t.setNestedScrollingEnabled(false);
        TextView textView = (TextView) ak2.findViewById(android.R.id.message);
        bgnVar.r = textView;
        if (textView != null) {
            CharSequence charSequence = bgnVar.l;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                bgnVar.t.removeView(bgnVar.r);
                if (bgnVar.s != null) {
                    ViewGroup viewGroup2 = (ViewGroup) bgnVar.t.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(bgnVar.t);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(bgnVar.s, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    ak2.setVisibility(8);
                }
            }
        }
        Button button = (Button) ak3.findViewById(android.R.id.button1);
        bgnVar.y = button;
        get getVar = bgnVar.f11525d;
        button.setOnClickListener(getVar);
        if (TextUtils.isEmpty(bgnVar.f11524c)) {
            bgnVar.y.setVisibility(8);
            i = 0;
        } else {
            bgnVar.y.setText(bgnVar.f11524c);
            bgnVar.y.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) ak3.findViewById(android.R.id.button2);
        bgnVar.v = button2;
        button2.setOnClickListener(getVar);
        if (TextUtils.isEmpty(bgnVar.h)) {
            bgnVar.v.setVisibility(8);
        } else {
            bgnVar.v.setText(bgnVar.h);
            bgnVar.v.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) ak3.findViewById(android.R.id.button3);
        bgnVar.u = button3;
        button3.setOnClickListener(getVar);
        if (TextUtils.isEmpty(bgnVar.z)) {
            bgnVar.u.setVisibility(8);
        } else {
            bgnVar.u.setText(bgnVar.z);
            bgnVar.u.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        int i3 = typedValue.data;
        int i4 = 2;
        if (i3 != 0) {
            if (i == 1) {
                Button button4 = bgnVar.y;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = bgnVar.v;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = bgnVar.u;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            ak3.setVisibility(8);
        }
        if (bgnVar.af != null) {
            ak.addView(bgnVar.af, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            bgnVar.n = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(bgnVar.i) || !bgnVar.ac) {
                window.findViewById(R.id.title_template).setVisibility(8);
                bgnVar.n.setVisibility(8);
                ak.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                bgnVar.q = textView2;
                textView2.setText(bgnVar.i);
                Drawable drawable = bgnVar.f11522ab;
                if (drawable != null) {
                    bgnVar.n.setImageDrawable(drawable);
                } else {
                    bgnVar.q.setPadding(bgnVar.n.getPaddingLeft(), bgnVar.n.getPaddingTop(), bgnVar.n.getPaddingRight(), bgnVar.n.getPaddingBottom());
                    bgnVar.n.setVisibility(8);
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i5 = (ak == null || ak.getVisibility() == 8) ? 0 : 1;
        boolean z3 = ak3.getVisibility() != 8;
        if (!z3 && (findViewById = ak2.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i5 != 0) {
            NestedScrollView nestedScrollView2 = bgnVar.t;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (bgnVar.l == null && bgnVar.s == null) ? null : ak.findViewById(R.id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = ak2.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = bgnVar.s;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z3 || i5 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i5 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f40a, alertController$RecycleListView.getPaddingRight(), z3 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f41b);
            }
        }
        if (!z2) {
            View view3 = bgnVar.s;
            if (view3 == null) {
                view3 = bgnVar.t;
            }
            if (view3 != null) {
                int i6 = i5 | (z3 ? 2 : 0);
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                int i7 = Build.VERSION.SDK_INT;
                if (i7 >= 23) {
                    WeakHashMap weakHashMap = goi.f18490c;
                    if (i7 >= 23) {
                        cnw.b(view3, i6, 3);
                    }
                    if (findViewById11 != null) {
                        ak2.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        ak2.removeView(findViewById12);
                    }
                } else {
                    if (findViewById11 != null && (i6 & 1) == 0) {
                        ak2.removeView(findViewById11);
                        findViewById11 = null;
                    }
                    if (findViewById12 == null || (i6 & 2) != 0) {
                        view = findViewById12;
                    } else {
                        ak2.removeView(findViewById12);
                        view = null;
                    }
                    if (findViewById11 != null || view != null) {
                        if (bgnVar.l != null) {
                            bgnVar.t.setOnScrollChangeListener(new akj(findViewById11, i4, view));
                            bgnVar.t.post(new ggi(bgnVar, findViewById11, view, i2));
                        } else {
                            AlertController$RecycleListView alertController$RecycleListView2 = bgnVar.s;
                            if (alertController$RecycleListView2 != null) {
                                alertController$RecycleListView2.setOnScrollListener(new eup(findViewById11, view));
                                bgnVar.s.post(new ggi(bgnVar, findViewById11, view, 1));
                            } else {
                                if (findViewById11 != null) {
                                    ak2.removeView(findViewById11);
                                }
                                if (view != null) {
                                    ak2.removeView(view);
                                }
                            }
                        }
                    }
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView3 = bgnVar.s;
        if (alertController$RecycleListView3 == null || (listAdapter = bgnVar.f11527f) == null) {
            return;
        }
        alertController$RecycleListView3.setAdapter(listAdapter);
        int i8 = bgnVar.f11521a;
        if (i8 > -1) {
            alertController$RecycleListView3.setItemChecked(i8, true);
            alertController$RecycleListView3.setSelection(i8);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.j.t;
        if (nestedScrollView == null || !nestedScrollView.az(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.j.t;
        if (nestedScrollView == null || !nestedScrollView.az(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // g.aoz, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        bgn bgnVar = this.j;
        bgnVar.i = charSequence;
        TextView textView = bgnVar.q;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
