package com.bytedance.msdk.dq.ox;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import java.util.Map;

/* loaded from: classes.dex */
public class dq implements com.bytedance.msdk.dq.dq.p {
    private q dq;

    private void dq(ValueSet valueSet) {
        if (valueSet != null) {
            ia();
        }
    }

    private void ia() {
        d.d(d.dq(d.dq(), "personal_ads_type", this.dq.mn() ? "0" : "1"));
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String d() {
        return com.bytedance.sdk.gromore.init.dq.ox();
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public Map<String, Object> d(Context context, Map<String, Object> map) {
        return null;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public int dq(com.bytedance.msdk.api.p.ox oxVar) {
        return 0;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String dq() {
        return d() + ".0";
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x007a, code lost:
    
        if (r4 == 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0087, code lost:
    
        if (r4 == 3) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0063, code lost:
    
        if (r4 == 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0065, code lost:
    
        r2 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x006f, code lost:
    
        if (r4 == 4) goto L34;
     */
    @Override // com.bytedance.msdk.dq.dq.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String dq(Context context, Map<String, Object> map) {
        if (!com.bytedance.sdk.gromore.init.dq.s()) {
            return "";
        }
        if (map != null) {
            Object obj = map.get(com.bytedance.msdk.dq.dq.dq.dq);
            Object obj2 = map.get(com.bytedance.msdk.dq.dq.dq.p);
            String str = obj2 instanceof String ? (String) obj2 : null;
            Object obj3 = map.get(com.bytedance.msdk.dq.dq.dq.iw);
            String str2 = obj3 instanceof String ? (String) obj3 : null;
            Object obj4 = map.get(com.bytedance.msdk.dq.dq.dq.ox);
            int intValue = obj4 instanceof Integer ? ((Integer) obj4).intValue() : 0;
            if (obj instanceof com.bytedance.msdk.api.dq.d) {
                com.bytedance.msdk.api.dq.d dVar = (com.bytedance.msdk.api.dq.d) obj;
                int le = dVar.le();
                if (le == 10) {
                    if (intValue == 1) {
                        le = 2;
                    }
                } else if (le == 1) {
                    if (intValue != 3) {
                    }
                    le = 1;
                } else if (le == 7) {
                    if (intValue == 6) {
                        le = 7;
                    }
                } else if (le == 5) {
                    if (intValue != 4) {
                        if (intValue == 5) {
                            le = 9;
                        }
                    }
                    le = 5;
                }
                d.dq dq = d.dq(dVar, dVar.k(), str, str2, null, true);
                dq.mn(le).p(dVar.u()).iw(dVar.ir()).s(dVar.op());
                Integer num = (Integer) map.get(com.bytedance.msdk.dq.dq.dq.f1042d);
                int intValue2 = num == null ? 0 : num.intValue();
                if (le == 3 || le == 7 || le == 8) {
                    if (dVar.q() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dVar.jy() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq.dq(com.bytedance.msdk.dq.s.mn.dq(context, 1080.0f)).d(com.bytedance.msdk.dq.s.mn.dq(context, 1920.0f));
                    } else {
                        dq.dq(dVar.q()).d(dVar.jy());
                    }
                    if (dVar.e() <= 0 || dVar.kx() <= 0) {
                        dq.dq(1080).d(1920);
                    } else {
                        dq.dq(dVar.e()).d(dVar.kx());
                    }
                } else if (le == 1 || le == 2) {
                    if (dVar.q() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && dVar.jy() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq.dq(dVar.q()).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    } else if (dVar.q() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dVar.jy() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq.dq(com.bytedance.msdk.dq.s.mn.dq(context, 1080.0f)).d(com.bytedance.msdk.dq.s.mn.dq(context, 600.0f));
                    } else {
                        dq.dq(dVar.q()).d(dVar.jy());
                    }
                    if (dVar.e() <= 0 || dVar.kx() <= 0) {
                        dq.dq(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).d(MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
                    } else {
                        dq.dq(dVar.e()).d(dVar.kx());
                    }
                } else if (le == 5 || le == 9) {
                    dq.ox(dVar.h());
                    if (dVar.q() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && dVar.jy() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq.dq(dVar.q()).d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    } else if (dVar.q() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dVar.jy() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq.dq(com.bytedance.msdk.dq.s.mn.dq(context, 1080.0f)).d(com.bytedance.msdk.dq.s.mn.dq(context, 750.0f));
                    } else {
                        dq.dq(dVar.q()).d(dVar.jy());
                    }
                    if (dVar.kx() <= 0 || dVar.e() <= 0) {
                        dq.dq(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK).d(MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
                    } else {
                        dq.dq(dVar.e()).d(dVar.kx());
                    }
                } else {
                    dq.dq(MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO).d(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
                    dq.dq(340.0f).d(640.0f);
                }
                if (intValue2 != 0 && intValue2 == 1 && le == 5) {
                    dq.s(le);
                }
                if (le == 1 || le == 2) {
                    dq.s(le);
                }
                return wp.dq().dq(dq.dq(), false, -1);
            }
        }
        return null;
    }

    @Override // com.bytedance.msdk.dq.dq.d
    public void dq(Context context, Map<String, Object> map, com.bytedance.msdk.dq.dq.ox oxVar) {
        this.dq = com.bytedance.msdk.core.d.no().d();
        ia();
        oxVar.dq();
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void dq(com.bytedance.msdk.api.p.q qVar, ValueSet valueSet) {
        ValueSet valueSet2 = (ValueSet) valueSet.objectValue(8517, ValueSet.class);
        this.dq.d(valueSet2);
        dq(valueSet2);
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void dq(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        Object obj = map.get(com.bytedance.msdk.dq.dq.dq.s);
        int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        if (intValue == 0 || intValue == 1) {
            com.bytedance.sdk.gromore.init.dq.dq(intValue);
        }
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public int iw() {
        return 0;
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void mn() {
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public String ox() {
        return com.bytedance.sdk.gromore.init.dq.p();
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public void p() {
    }

    @Override // com.bytedance.msdk.dq.dq.p
    public long s() {
        return 0L;
    }
}
