title = 'Digirolamo LR'

restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-07_B920/2015-08-07_B920_it060s_lr.sav'
b920_avlr = DIGIRESULT.AVGLR
b920_stdlr = DIGIRESULT.STDLR
b920_medlr = DIGIRESULT.MEDLR
b920_profnum = DIGIRESULT.PROFNUM
b920_time = DIGIRESULT.TIME
b920_aod = DIGIRESULT.AOD
b920_lr = DIGIRESULT.LR
restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-12_B923/2015-08-12_B923_it060s_lr.sav'
b923_avlr = DIGIRESULT.AVGLR
b923_stdlr = DIGIRESULT.STDLR
b923_medlr = DIGIRESULT.MEDLR
b923_profnum = DIGIRESULT.PROFNUM
b923_time = DIGIRESULT.TIME
b923_aod = DIGIRESULT.AOD
b923_lr = DIGIRESULT.LR
restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-12_B924/2015-08-12_B924_it060s_lr.sav'
b924_avlr = DIGIRESULT.AVGLR
b924_stdlr = DIGIRESULT.STDLR
b924_medlr = DIGIRESULT.MEDLR
b924_profnum = DIGIRESULT.PROFNUM
b924_time = DIGIRESULT.TIME
b924_aod = DIGIRESULT.AOD
b924_lr = DIGIRESULT.LR
restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-16_B928/2015-08-16_B928_it060s_lr.sav'
b928_avlr = DIGIRESULT.AVGLR
b928_stdlr = DIGIRESULT.STDLR
b928_medlr = DIGIRESULT.MEDLR
b928_profnum = DIGIRESULT.PROFNUM
b928_time = DIGIRESULT.TIME
b928_aod = DIGIRESULT.AOD
b928_lr = DIGIRESULT.LR
restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-20_B932/2015-08-20_B932_it060s_lr.sav'
b932_avlr = DIGIRESULT.AVGLR
b932_stdlr = DIGIRESULT.STDLR
b932_medlr = DIGIRESULT.MEDLR
b932_profnum = DIGIRESULT.PROFNUM
b932_time = DIGIRESULT.TIME
b932_aod = DIGIRESULT.AOD
b932_lr = DIGIRESULT.LR
restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-25_B934/2015-08-25_B934_it060s_lr.sav'
b934_avlr = DIGIRESULT.AVGLR
b934_stdlr = DIGIRESULT.STDLR
b934_medlr = DIGIRESULT.MEDLR
b934_profnum = DIGIRESULT.PROFNUM
b934_time = DIGIRESULT.TIME
b934_aod = DIGIRESULT.AOD
b934_lr = DIGIRESULT.LR

;tot = [b920_lr,b923_lr,b924_lr,b928_lr,b932_lr,b934_lr]
tot = [b923_lr,b924_lr]
;tot = [b920_lr,b923_lr,b924_lr,b928_lr]
;tot = [b932_lr, b934_lr]
mean_lr = MEAN(tot)
std_lr = STDDEV(tot)
med_lr = MEDIAN(tot)
print, 'campaign mean ',string(mean_lr,format='(f0.2)'), '  +/-  ' , string(std_lr,format='(f0.2)')

print, 'B920  ', string(b920_avlr,format='(f0.2)'), '  +/-  ' , string(b920_stdlr,format='(f0.2)')
print, 'B923  ', string(b923_avlr,format='(f0.2)'), '  +/-  ' , string(b923_stdlr,format='(f0.2)')
print, 'B924  ', string(b924_avlr,format='(f0.2)'), '  +/-  ' , string(b924_stdlr,format='(f0.2)')
print, 'B928  ', string(b928_avlr,format='(f0.2)'), '  +/-  ' , string(b928_stdlr,format='(f0.2)')
print, 'B932  ', string(b932_avlr,format='(f0.2)'), '  +/-  ' , string(b932_stdlr,format='(f0.2)')
print, 'B934  ', string(b934_avlr,format='(f0.2)'), '  +/-  ' , string(b934_stdlr,format='(f0.2)')


;flt='b920'
;;plot the data
;!P.MULTI=[0,1]
;set_plot, 'PS'
;device,/portrait, decomposed=0, color=1, bits_per_pixel=8,xsize=25,ysize=20,font_size=20,filename='ice-d_lr_prof_v2.eps'
;col27

;plot, b920_aod, b920_lr, psym=4, font=1, color=27, title='ICE-D aerosol campaign Lidar Ratio', xtitle='AOD', ytitle='lidar ratio', yrange=[20, 120]
;oplot, b920_aod, b920_lr, psym=4, color=4
;oplot, b923_aod, b923_lr, psym=4, color=2
;oplot, b924_aod, b924_lr, psym=4, color=8
;oplot, b928_aod, b928_lr, psym=4, color=9
;oplot, b932_aod, b932_lr, psym=4, color=14
;oplot, b934_aod, b934_lr, psym=4, color=21
;;oplot,[0,250],[mean_lr, mean_lr],thick=2, color=20
;;oplot,[0,250],[(mean_lr-std_lr), (mean_lr-std_lr)], thick=2, color=22
;;oplot,[0,250],[(mean_lr+std_lr), (mean_lr+std_lr)], thick=2, color=22
;xyouts, 0.12, 115,'campaign mean LR ' , font=1, color=20
;xyouts, 0.21, 115, string(mean_lr, format='(f0.2)'), font=1, color=20
;xyouts, 0.25, 115, 'SD ', font=1, color=22
;xyouts, 0.27, 115, string(std_lr, format='(f0.2)'), font=1, color=22
;xyouts, 0.12, 110, 'campaign median LR ', font=1, color=27
;xyouts, 0.22, 110, string(med_lr, format='(f0.2)'), font=1, color=27
;xyouts, 0.12, 105, 'B920', font=1, color=4
;xyouts, 0.15, 105, 'B923', font=1, color=2
;xyouts, 0.18, 105, 'B924', font=1, color=8
;xyouts, 0.21, 105, 'B928', font=1, color=9
;xyouts, 0.24, 105, 'B932', font=1, color=14
;xyouts, 0.27, 105, 'B934', font=1, color=21

plot, b920_profnum, b920_lr, psym=4, font=1, color=27, title='ICE-D aerosol campaign Lidar Ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 120], xrange=[0,250]
oplot, b920_profnum, b920_lr, psym=4, color=4
oplot, b923_profnum, b923_lr, psym=4, color=2
oplot, b924_profnum, b924_lr, psym=4, color=8
oplot, b928_profnum, b928_lr, psym=4, color=9
oplot, b932_profnum, b932_lr, psym=4, color=14
oplot, b934_profnum, b934_lr, psym=4, color=21
oplot,[0,250],[mean_lr, mean_lr],thick=2, color=20
oplot,[0,250],[(mean_lr-std_lr), (mean_lr-std_lr)], thick=2, color=22
oplot,[0,250],[(mean_lr+std_lr), (mean_lr+std_lr)], thick=2, color=22
xyouts, 5, 26,'campaign mean LR ' , font=1, color=20
xyouts, 63, 26, string(mean_lr, format='(f0.2)'), font=1, color=20
xyouts, 90, 26, 'SD ', font=1, color=22
xyouts, 100, 26, string(std_lr, format='(f0.2)'), font=1, color=22
xyouts, 125, 26, 'campaign median LR ', font=1, color=27
xyouts, 188, 26, string(med_lr, format='(f0.2)'), font=1, color=27
xyouts, 5,   22, 'B920', font=1, color=4
xyouts, 25,  22, 'B923', font=1, color=2
xyouts, 44,  22, 'B924', font=1, color=8
xyouts, 65,  22, 'B928', font=1, color=9
xyouts, 85,  22, 'B932', font=1, color=14
xyouts, 105, 22, 'B934', font=1, color=21

;plot, b920_profnum, b920_lr, psym=4, font=1, color=27, title='B920 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 60]
;oplot, b920_profnum, b920_lr, psym=4, color=4
;oplot,[0,250],[b920_avlr, b920_avlr],thick=2, color=20
;oplot,[0,250],[(b920_avlr-b920_stdlr), (b920_avlr-b920_stdlr)], thick=2, color=22
;oplot,[0,250],[(b920_avlr+b920_stdlr), (b920_avlr+b920_stdlr)], thick=2, color=22
;xyouts, 5, 26,'mean LR ' , font=1, color=20
;xyouts, 33, 26, string(b920_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 24, 'SD ', font=1, color=22
;xyouts, 15, 24, string(b920_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 40, 22, string(b920_medlr, format='(f0.2)'), font=1, color=27

;plot, b923_profnum, b923_lr, psym=4, font=1, color=27, title='B923 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 80]
;oplot, b923_profnum, b923_lr, psym=4, color=4
;oplot,[0,250],[b923_avlr, b923_avlr],thick=2, color=20
;oplot,[0,250],[(b923_avlr-b923_stdlr), (b923_avlr-b923_stdlr)], thick=2, color=22
;oplot,[0,250],[(b923_avlr+b923_stdlr), (b923_avlr+b923_stdlr)], thick=2, color=22
;xyouts, 5, 28,'mean LR ' , font=1, color=20
;xyouts, 23, 28, string(b923_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 25, 'SD ', font=1, color=22
;xyouts, 15, 25, string(b923_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 25, 22, string(b923_medlr, format='(f0.2)'), font=1, color=27

;plot, b924_profnum, b924_lr, psym=4, font=1, color=27, title='B924 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 70]
;oplot, b924_profnum, b924_lr, psym=4, color=4
;oplot,[0,250],[b924_avlr, b924_avlr],thick=2, color=20
;oplot,[0,250],[(b924_avlr-b924_stdlr), (b924_avlr-b924_stdlr)], thick=2, color=22
;oplot,[0,250],[(b924_avlr+b924_stdlr), (b924_avlr+b924_stdlr)], thick=2, color=22
;xyouts, 5, 28,'mean LR ' , font=1, color=20
;xyouts, 33, 28, string(b924_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 25, 'SD ', font=1, color=22
;xyouts, 18, 25, string(b924_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 38, 22, string(b924_medlr, format='(f0.2)'), font=1, color=27

;plot, b928_profnum, b928_lr, psym=4, font=1, color=27, title='B928 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 60]
;oplot, b928_profnum, b928_lr, psym=4, color=4
;oplot,[0,250],[b928_avlr, b928_avlr],thick=2, color=20
;oplot,[0,250],[(b928_avlr-b928_stdlr), (b928_avlr-b928_stdlr)], thick=2, color=22
;oplot,[0,250],[(b928_avlr+b928_stdlr), (b928_avlr+b928_stdlr)], thick=2, color=22
;xyouts, 5, 28,'mean LR ' , font=1, color=20
;xyouts, 30, 28, string(b928_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 25, 'SD ', font=1, color=22
;xyouts, 18, 25, string(b928_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 35, 22, string(b928_medlr, format='(f0.2)'), font=1, color=27

;plot, b932_profnum, b932_lr, psym=4, font=1, color=27, title='B932 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 100]
;oplot, b932_profnum, b932_lr, psym=4, color=4
;oplot,[0,250],[b932_avlr, b932_avlr],thick=2, color=20
;oplot,[0,250],[(b932_avlr-b932_stdlr), (b932_avlr-b932_stdlr)], thick=2, color=22
;oplot,[0,250],[(b932_avlr+b932_stdlr), (b932_avlr+b932_stdlr)], thick=2, color=22
;xyouts, 5, 28,'mean LR ' , font=1, color=20
;xyouts, 34, 28, string(b932_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 25, 'SD ', font=1, color=22
;xyouts, 18, 25, string(b932_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 39, 22, string(b932_medlr, format='(f0.2)'), font=1, color=27

;plot, b934_profnum, b934_lr, psym=4, font=1, color=27, title='B934 Lidar ratio', xtitle='profnum', ytitle='lidar ratio', yrange=[20, 100]
;oplot, b934_profnum, b934_lr, psym=4, color=4
;oplot,[0,250],[b934_avlr, b934_avlr],thick=2, color=20
;oplot,[0,250],[(b934_avlr-b934_stdlr), (b934_avlr-b934_stdlr)], thick=2, color=22
;oplot,[0,250],[(b934_avlr+b934_stdlr), (b934_avlr+b934_stdlr)], thick=2, color=22
;xyouts, 5, 28,'mean LR ' , font=1, color=20
;xyouts, 34, 28, string(b934_avlr, format='(f0.2)'), font=1, color=20
;xyouts, 5, 25, 'SD ', font=1, color=22
;xyouts, 18, 25, string(b934_stdlr, format='(f0.2)'), font=1, color=22
;xyouts, 5, 22, 'median LR ', font=1, color=27
;xyouts, 39, 22, string(b934_medlr, format='(f0.2)'), font=1, color=27

device, /close
end


