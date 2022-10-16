CREATE TABLE project_breast_cancer.tb_data3
AS
SELECT
	CASE 
		WHEN class = 'no-recurrence-events' THEN 0
        WHEN class =  'recurrence-events' THEN 1
	END as class,
age,
menopause,
	CASE
		WHEN tumor_size = '0-4' OR tumor_size = '5-9' THEN 'Muito Pequeno'
        WHEN tumor_size = '10-14' OR tumor_size = '15-19' THEN 'Pequeno'
        WHEN tumor_size = '20-24' OR tumor_size = '25-29' THEN 'Médio'
        WHEN tumor_size = '30-34' OR tumor_size = '35-39' THEN 'Grande'
        WHEN tumor_size = '40-44' OR tumor_size = '45-49' THEN 'Muito Grande'
        WHEN tumor_size = '50-54' OR tumor_size = '55-59' THEN 'Tratamento Urgente'
	END as tumor_size,
inv_nodes,
	CASE
		WHEN node_caps = 'no' THEN 0
        WHEN node_caps = 'yes' THEN 1
        ELSE 2
	END as node_caps,
deg_malig,
	CASE
		WHEN breast = 'left' THEN 'E'
        WHEN breast = 'right' THEN 'D'
	END as breast,
breast_quad,
    CASE
		WHEN irradiat = 'no' THEN 0
        WHEN irradiat = 'yes' THEN 1
	END as irradiat
FROM project_breast_cancer.tb_data;
        



        
        
