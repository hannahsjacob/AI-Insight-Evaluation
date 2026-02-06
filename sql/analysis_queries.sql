-- AI Response Evaluation Analysis

-- Create table
CREATE TABLE ai_response_evaluation (
    question TEXT,
    accuracy_score INTEGER,
    clarity_score INTEGER,
    issues_found TEXT
);

-- Insert sample data
INSERT INTO ai_response_evaluation VALUES
('What is Artificial Intelligence?', 5, 5, 'None'),
('Explain Machine Learning', 4, 4, 'Minor simplification'),
('What is Deep Learning?', 4, 3, 'Needs more examples'),
('What is Data Science?', 5, 5, 'None'),
('Define Neural Networks', 3, 3, 'Lacks depth');

-- Find average accuracy
SELECT AVG(accuracy_score) AS avg_accuracy
FROM ai_response_evaluation;

-- Find responses needing improvement
SELECT *
FROM ai_response_evaluation
WHERE accuracy_score < 4;
