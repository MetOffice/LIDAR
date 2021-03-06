restore,'/project/obr/Lidar_data/Faam_data/lidar_processed/2015-08-07_B920/2015-08-07_B920_it060s_res045m_ext_dext.sav'

title = 'Range corrected lidar signal - channel 0'
variable = lid_pr2[*,*,0]
;format = '(I)'
datarange = [0, 1200]
yrange = [0, 10000]
;trange = [7, 13]

loadct, 33, /silent
tvlct, 0, 0, 0, 255
tvlct, 255, 255, 255, 0
top = 254
bottom = 1
nlevs = 32

levs = datarange[0] + (datarange[1]-datarange[0]) * dindgen(nlevs) / nlevs
cols = bottom + bytscl(indgen(nlevs), top=top-bottom)

contour, variable, lid_time/3600.0, lid_height, min_value=0, $
	levels=levs, c_colors=cols, /cell_fill, xrange=trange, $
	yrange=yrange, /xstyle, /ystyle, title=title, $
	xtitle='Time (h)', ytitle='Altitude (m)', $
	position=[0.1, 0.1, 0.8, 0.95]

oplot, lid_time/3600.0, lid_altitude

colorbar, range=datarange, /vertical, bottom=bottom, ncolors=top-bottom+1, $
	position=[0.9, 0.2, 0.95, 0.85], format=format

end


